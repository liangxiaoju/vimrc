set fileencodings=ucs-bom,utf-8,cp936,gb18030,default,latin1

map <space> <C-d>

set cmdheight=1

"set term=xterm
colorscheme desert
"colorscheme darkblue
"colorscheme peaksea

set mouse=a
set tags=tags;/

" TagBar
nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <leader>tl :TagbarToggle<CR>

" cscope setting
if has("cscope")
  set csprg=/usr/bin/cscope
  if has("quickfix")
	  set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif
  set nocscopetag
  set cscopetagorder=0
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
endif

nmap <C-a>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-a>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-a>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-a>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:syntastic_auto_loc_list = 0
