vim9script
g:SessionLoad = 1
if &cp | set nocp | endif
const so_save: number = &g:so | const siso_save: number = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
v:this_session = expand("<sfile>:p")
doautoall SessionLoadPre
var save_splitbelow: bool
var save_splitright: bool
var save_winminheight: number
var save_winminwidth: number
var wipebuf: number = -1
var shortmess_save: string
silent only
silent tabonly
cd ~/cprojects/hashmap
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  wipebuf = bufnr('%')
endif
shortmess_save = &shortmess
set shortmess+=aoO
badd +0 hashmap.c
argglobal
:%argdel
:$argadd hashmap.c
edit hashmap.c
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
&fdl = &fdl
{
  var l: number = 55 - ((12 * winheight(0) + 10) / 21)
  if l < 1 | l = 1 | endif
  keepjumps exe ":" .. l
  normal! zt
  keepjumps :55
  normal! 0
}
tabnext 1
if wipebuf != -1 && len(win_findbuf(wipebuf)) == 0
  silent exe 'bwipe ' .. wipebuf
endif
&winheight = max([1, save_winminheight])
&winwidth = max([20, save_winminwidth])
&shortmess = shortmess_save
var sx: string = expand("<sfile>:p:r") .. "x.vim"
if filereadable(sx)
  exe "source " .. fnameescape(sx)
endif
&g:so = so_save | &g:siso = siso_save
nohlsearch
doautoall SessionLoadPost
unlet g:SessionLoad
# vim: set ft=vim :
