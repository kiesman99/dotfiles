set encoding=utf-8 " Enable UTF-8 Encoding for this file

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')


" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree' " A File Explorer

Plug 'ctrlpvim/ctrlp.vim' " A fuzzy file finder

Plug 'tpope/vim-surround' " Extensive Plugin to add and edit surroundings

Plug 'tpope/vim-fugitive' " A git wrapper

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}} " A Language Server processor

Plug 'yatli/coc-powershell', {'do': { -> coc#powershell#install()} }

Plug 'itchyny/lightline.vim' " Status Bar

" Plugin for docker syntax highlighting
Plug 'ekalinin/Dockerfile.vim'

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

Plug 'dracula/vim'


" Syntax Highlighting Plugins

Plug 'vim-scripts/Dart'
Plug 'PProvost/vim-ps1'

call plug#end()
" END PLUGINS


" THEMES
" Enable Colorscheme
colorscheme dracula

" Custom Settings
set relativenumber  " Set relative line Numbers
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
syntax enable " Enable Syntax Highlighting
set showcmd " always show command prompt
set number " show absolute line numbers

" Enable auto close of bracktes etc
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
