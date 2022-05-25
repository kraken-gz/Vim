" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
:set number
:set showmatch
" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

set hidden

"jos neka
filetype plugin indent on


set path+=/mnt/2642BC0642BBD92F/Users/igor/Documents/Fakultet

" moja podesavanja
:set background=dark

" moja podesavanja
:set encoding=utf-8
:set fileencodings=ucs-bom,utf8,latin1
:set showmatch
:set number
:syntax enable
:colorscheme atom-dark
"da bi koristio font, treba da ga imas instaliran u OS koji koristis

set guifont=Consolas\ 10
"this one does the trick (below) , but upper is okay to stay. but only if you
"install vim-gtk3.
 "
set guifont=Consolas:h10:cANSI
set nocompatible 
set autoindent

""execute pathogen#infect()
""filetype plugin indent on

set foldmethod=indent
setlocal foldlevelstart=99

let g:airline#extensions#tabline#enabled = 1
"filetype off

if &diff
    highlight! link DiffText MatchParen
endif



inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap jk <ESC>
let mapleader = ","
"remap to copy to system clipboard"

"this all yanking/deleting in system clipboard, if you one day want to use
"other registry , this will use only system clipboard, registry"
:set clipboard=unnamed

" In insert or command mode, move normally by using Ctrl. ovo je da mozes se
" kretati, u insert mode i command mode, a da ne moras uopste da koristis
" strelice 
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

""noremap <Leader>y "*y
""noremap <Leader>p "*p
noremap <Leader>y "+y
noremap <Leader>p "+p

:colorscheme atom-dark-256
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

