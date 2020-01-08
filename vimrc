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

Plug 'tpope/vim-fugitive' " A git wrapper

Plug 'itchyny/lightline.vim' " Status Bar

Plug 'ctrlpvim/ctrlp.vim' " A fuzzy finder

Plug 'airblade/vim-gitgutter' " A git integration to show which line has been edited

" Plugin for docker syntax highlighting
Plug 'ekalinin/Dockerfile.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

" Plug 'dracula/vim'
Plug 'ayu-theme/ayu-vim' " or other package manager
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

" Syntax Highlighting Plugins

Plug 'vim-scripts/Dart'
Plug 'PProvost/vim-ps1'

call plug#end()
" END PLUGINS

" autostart NERDTree
" autocmd vimenter * NERDTree

" custom keybindings

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" THEMES
" Enable Colorscheme
" colorscheme dracula
colorscheme ayu

" Custom Settings
set relativenumber  " Set relative line Numbers
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
syntax enable " Enable Syntax Highlighting
set showcmd " always show command prompt
set number " show absolute line numbers
