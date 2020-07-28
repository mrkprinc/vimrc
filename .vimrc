set nocompatible	" required
filetype off		" required

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()		"required
filetype plugin indent on	"required
syntax on

set backspace=indent,eol,start
set encoding=utf-8
set hidden
set noshowmode
set number
set shiftwidth=0
set softtabstop=-1
set tabstop=4

"Filetype settings
au BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.rs
  \ set tabstop=2 expandtab autoindent fileformat=unix


"colorscheme
let g:gruvbox_contrast_dark = 'hard'
let g:lightline = { 'colorscheme': 'wombat', }
colorscheme gruvbox
set termguicolors
set background=dark

"lint error msg
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"Key mappings
map <C-n> :NERDTreeToggle<CR>
map ; :Files<CR>

