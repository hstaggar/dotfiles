set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
filetype plugin on
filetype indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" gruvbox color scheme
Plugin 'morhetz/gruvbox'
" base16 color scheme
Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" For backspace issue
set backspace=indent,eol,start

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 

"R-Plugin
" Change Leader and LocalLeader keys:

let maplocalleader = ","
let mapleader = ";"
   
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
	inoremap <C-Space> <C-x><C-o>
else
   	inoremap <Nul> <C-x><C-o>
endif
   
" Press the space bar to send lines and selection to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
"The lines below are suggestions for Vim in general and are not
" specific to the improvement of the Vim-R-plugin.
"
" Highlight the last searched pattern:
set hlsearch

" Show where the next pattern is as you type it
set incsearch

" By default, Bim indents code by 8 spaces. Most people prefer 4 spaces:
set sw=4

"For 256 colors
set t_Co=256
set background=dark    " Setting dark mode
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme gruvbox
" colorscheme base16-tomorrow
let rout_follow_colorscheme = 1
set t_ut=
