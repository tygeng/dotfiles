" set file make program according to file type
au FileType markdown set makeprg=multimarkdown\ %\ -o\ %.html


" tell it to use an undo file
set undofile
" " set a directory to store the undo history
set undodir=/home/tony1/.vimundo/
set undolevels=1000
set undoreload=10000

set viminfo='10,\"100,:20,%,n~/.viminfo
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
set ai nowrap nu tabstop=4 shiftwidth=4 expandtab
setlocal spelllang=en_us
" for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on
" end for vundle
noremap h <Home>
noremap i <Up>
noremap j <Left>
noremap k <Down>
noremap ; <End>
noremap <Space> <Insert>
nnoremap <Delete> daw
filetype on
filetype plugin on
filetype indent on
set hlsearch
map <silent> s :call Co(&ft)<CR>
so ~/vimscripts/simple_comment.vim
" nnoremap <F5> :w<CR>:!date '+\%n---------------------------------------- %  \%H:\%M:\%S' && compac && ./%< && echo -e "$(date '+\%n---------------------------------------- %  \%H:\%M:\%S ')\033[0;32m[DONE]\033[0m"<CR>
" imap <F5> <Esc><F5>
" nnoremap <F6> :w<CR>:!date '+\%n---------------------------------------- %  \%H:\%M:\%S' && gcc -pthread -O2  -o %< % && ./%< && echo -e "$(date '+\%n---------------------------------------- %  \%H:\%M:\%S ')\033[0;32m[DONE]\033[0m"<CR>
" imap <F6> <Esc><F6>
" nnoremap <F8> :w<CR>:!date '+\%n---------------------------------------- %  \%H:\%M:\%S debug' && gcc -O0 -ggdb3 -m32  -o %< % && gdb ./%< && echo -e "$(date '+\%n---------------------------------------- %  \%H:\%M:\%S ')debug \033[0;32m[DONE]\033[0m"<CR>
" imap <F8> <Esc><F8>
nnoremap <F3> :set hlsearch!<CR>
" nnoremap <F2> :set smartindent! autoindent!<CR>:echo 'autoindent='autoindent<CR>
" inoremap <F2> <Esc>:set smartindent! autoindent!<CR>:echo 'autoindent='autoindent<CR>i
nnoremap <F2> :set invpaste paste?<CR>
inoremap <F2> <Esc>:set invpaste paste?<CR>a
set pastetoggle=<F2>
set showmode
nmap <F9> <C-T>
imap <F9> <Esc><F9>a
nmap <A-F10> :vsp <CR>:wincmd l<CR>:exec("tag ".expand("<cword>"))<CR>:wincmd h<CR>
nmap <F10> <C-]>
imap <F10> <Esc><F10>a
set tags=./tags;/


vmap <silent> ,y y:new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
nmap <silent> ,y :new<CR>:call setline(1,getregtype())<CR>o<Esc>P:wq! ~/reg.txt<CR>
map <silent> ,p :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>p
map <silent> ,P :sview ~/reg.txt<CR>"zdddG:q!<CR>:call setreg('"', @", @z)<CR>P

noremap <F12> :%!astyle --style=java<CR>
nnoremap S :w<CR>:!ctags *.c *.cpp<CR>
imap <F12> <Esc><F12>

imap <F5> <Esc><F5>a
inoremap <F1> <C-x><C-f>
cnoremap <F1> <C-x><C-f>
nnoremap > :cn<CR>
nnoremap < :cp<CR>
noremap <F5> :w<CR>:make<CR><CR>
nnoremap <silent> <C-i> :wincmd k<CR>
nnoremap <silent> <C-k> :wincmd j<CR>
nnoremap <silent> <C-j> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
inoremap <silent> <C-i> <Esc>:wincmd k<CR>a
inoremap <silent> <C-k> <Esc>:wincmd j<CR>a
inoremap <silent> <C-j> <Esc>:wincmd h<CR>a
inoremap <silent> <C-l> <Esc>:wincmd l<CR>a

nnoremap <F4> :set spell!<CR>
inoremap <F4>  <Esc>:set spell!<CR>a
nnoremap U :redo<CR>
nnoremap R bdwi
nnoremap <Tab> >>
nnoremap <S-Tab> <<

nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
nnoremap d "+d
vnoremap d "+d
nnoremap P "+P

nmap Q <Nop>


colorscheme koehler
:set guioptions-=T  "remove toolbar
" :set guioptions-=r  "remove right-hand scroll bar
let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
highlight PmenuSel ctermfg=black ctermbg=white
highlight Pmenu ctermfg=grey ctermbg=blue
" let g:ycm_autoclose_preview_window_after_completion=1
