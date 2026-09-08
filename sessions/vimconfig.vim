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
cd ~/vim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  wipebuf = bufnr('%')
endif
shortmess_save = &shortmess
set shortmess+=aoO
badd +1 config/keybinds.vim
badd +0 config/which-key.vim
badd +1 config/plugins.vim
badd +0 config/config.vim
argglobal
:%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit config/keybinds.vim
save_splitbelow = &splitbelow
save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
:1wincmd h
wincmd w
&splitbelow = save_splitbelow
&splitright = save_splitright
wincmd t
save_winminheight = &winminheight
save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert :1resize ' .. ((&columns * 44 + 44) / 89)
exe 'vert :2resize ' .. ((&columns * 44 + 44) / 89)
argglobal
balt config/keybinds.vim
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
  var l: number = 1 - ((0 * winheight(0) + 8) / 17)
  if l < 1 | l = 1 | endif
  keepjumps exe ":" .. l
  normal! zt
  keepjumps :1
  normal! 0
}
wincmd w
argglobal
if bufexists(fnamemodify("config/which-key.vim", ":p")) | buffer config/which-key.vim | else | edit config/which-key.vim | endif
balt config/keybinds.vim
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
  var l: number = 7 - ((6 * winheight(0) + 8) / 17)
  if l < 1 | l = 1 | endif
  keepjumps exe ":" .. l
  normal! zt
  keepjumps :7
  normal! 08|
}
wincmd w
:2wincmd w
exe 'vert :1resize ' .. ((&columns * 44 + 44) / 89)
exe 'vert :2resize ' .. ((&columns * 44 + 44) / 89)
tabnext
edit config/plugins.vim
save_splitbelow = &splitbelow
save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
:1wincmd h
wincmd w
&splitbelow = save_splitbelow
&splitright = save_splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert :1resize ' .. ((&columns * 44 + 44) / 89)
exe 'vert :2resize ' .. ((&columns * 44 + 44) / 89)
argglobal
balt config/which-key.vim
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
  var l: number = 1 - ((0 * winheight(0) + 8) / 17)
  if l < 1 | l = 1 | endif
  keepjumps exe ":" .. l
  normal! zt
  keepjumps :1
  normal! 0
}
wincmd w
argglobal
if bufexists(fnamemodify("config/config.vim", ":p")) | buffer config/config.vim | else | edit config/config.vim | endif
balt config/plugins.vim
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
  var l: number = 6 - ((5 * winheight(0) + 8) / 17)
  if l < 1 | l = 1 | endif
  keepjumps exe ":" .. l
  normal! zt
  keepjumps :6
  normal! 0
}
wincmd w
exe 'vert :1resize ' .. ((&columns * 44 + 44) / 89)
exe 'vert :2resize ' .. ((&columns * 44 + 44) / 89)
tabnext
argglobal
enew
balt config/config.vim
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
tabnext 1
set stal=1
if wipebuf != -1 && len(win_findbuf(wipebuf)) == 0
  silent exe 'bwipe ' .. wipebuf
endif
&winheight = max([1, save_winminheight])
&winwidth = max([20, save_winminwidth])
&shortmess = shortmess_save
&winminheight = save_winminheight
&winminwidth = save_winminwidth
var sx: string = expand("<sfile>:p:r") .. "x.vim"
if filereadable(sx)
  exe "source " .. fnameescape(sx)
endif
&g:so = so_save | &g:siso = siso_save
nohlsearch
doautoall SessionLoadPost
unlet g:SessionLoad
# vim: set ft=vim :
