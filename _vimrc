" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

"odavde moje customisations start

"atom-dark tema
:colorscheme atom-dark-256

"da bi imao consolas font, moras ga imati instaliran na OS, jer on koristi od OS 
"consolas font, 10pt  - na Windows
set guifont=Consolas:h10:cANSI

"consolas font, 10pt  - na Linux
"set guifont=Consolas\ 10

"consolas font, 10pt  - na MacOS
"set guifont=Consolas\ Regular:h10

" a evo i funkcija, koja, prepoznaje OS, koji je, i stavlja ga accordingly
"
"if has("gui_running")
"  if has("gui_gtk2")
"    set guifont=Consolas\ 10
"  elseif has("gui_macvim")
"    set guifont=Consolas\ Regular:h10
"  elseif has("gui_win32")
"    set guifont=Consolas:h11:cANSI
"  endif
"endif

"prepoznaj filetype, i apply proper syntax
filetype plugin on

"auto indent
set autoindent

"open close brackets fast-    {; , ce odma da {}; 

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"line numbers
:set number

"force full color mode
set t_Co=256

"start maximised in Windows
autocmd GUIEnter * simalt ~x


"enable syntax highlighting
syntax enable

"set proper encoding 
:set encoding=utf-8

"if not working this up, have this one
"":set fileencodings=ucs-bom,utf8,latin1


"treat all numerals as decimal, regardless of whether they are padded with zeros. 
set nrformats=


" store swap,backups, undo files in diffrent folder, to avoid clutter, on working directory . On Linux, just change to path you use (just change path, whatsoever)
" swap files
" set directory=<path>
" backups
" set backupdir=<path>
" undo files
" set undodir=<path>


" swap files
set directory=C:\Users\igor\vim_backups
" backups
set backupdir=C:\Users\igor\vim_backups
" undo files
set undodir=C:\Users\igor\vim_backups


