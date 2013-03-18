" set file make program according to file type
au FileType markdown set makeprg=multimarkdown\ %\ -o\ %.html


"=========================
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=/home/tony1/.vimundo/
set undolevels=1000
set undoreload=10000
" remember last position
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
"=========================
" set tab
set ai nowrap nu tabstop=4 shiftwidth=4 expandtab
setlocal spelllang=en_us
"=========================
" for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
"YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
" syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1
let g:syntastic_loc_list_height=5
set statusline=%<\ %n:%f\ %m%r%y%{SyntasticStatuslineFlag()}%=line:\ %l\ of\ %L,\ col:\ %c%V\ 
" end for syntastic
" =========================
" remap keys
noremap h <Home>
noremap i <Up>
noremap j <Left>
noremap k <Down>
noremap ; <End>
noremap <Space> <Insert>
nnoremap <Delete> daw
"=========================
filetype on
filetype plugin on
filetype indent on
"=========================
"simple comment
map <silent> s :call Co(&ft)<CR>
so ~/vimscripts/simple_comment.vim
"=========================
"set F2 to toggle paste mode
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F2> :set invpaste paste?<CR>
inoremap <F2> <Esc>:set invpaste paste?<CR>a
set pastetoggle=<F2>
set showmode
"=========================
"c support for jump among files
nmap <F9> <C-T>
imap <F9> <Esc><F9>a
map <A-F10> :vsp<CR>:wincmd l<CR>:exec("tag ".expand("<cword>"))<CR>:wincmd h<CR>
nmap <F10> <C-]>
imap <F10> <Esc><F10>a
nmap <F8> :w<CR>:FSHere<CR>
imap <F8> <Esc><F8>a
map <A-F8> :w<CR>:vsp<CR>:FSRight<CR>:wincmd h<CR>
set tags=./tags;/
nnoremap S :w<CR>:silent !ctags *.c* *.h* --extra=+f<CR>
"=========================
noremap <F12> :%!astyle --style=java<CR>
imap <F12> <Esc><F12>
"=========================
imap <F5> <Esc><F5>a
"=========================
inoremap <F1> <C-x><C-f>
cnoremap <F1> <C-x><C-f>
"=========================
"next error for errormarker
nnoremap > :cn<CR>
nnoremap < :cp<CR>
"=========================
noremap <F5> :w<CR>:silent make<CR>
nmap <A-F5> :SyntasticCheck<CR>
imap <A-F5> <Esc><A-F5>a
nmap <A-F6> :SyntasticToggleMode<CR>
imap <A-F6> <Esc><A-F6>
"=========================
"switch among opened windows
nnoremap <silent> <A-i> :wincmd k<CR>
nnoremap <silent> <A-k> :wincmd j<CR>
nnoremap <silent> <A-j> :wincmd h<CR>
nnoremap <silent> <A-l> :wincmd l<CR>
inoremap <silent> <A-i> <Esc>:wincmd k<CR>a
inoremap <silent> <A-k> <Esc>:wincmd j<CR>a
inoremap <silent> <A-j> <Esc>:wincmd h<CR>a
inoremap <silent> <A-l> <Esc>:wincmd l<CR>a
"=========================
nnoremap <F4> :set spell!<CR>
inoremap <F4>  <Esc>:set spell!<CR>a
nnoremap U :redo<CR>
nnoremap R bdwi
nnoremap <Tab> >>
nnoremap <S-Tab> <<
"=========================
"yank and paste to system clipboard
nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
nnoremap d "+d
vnoremap d "+d
nnoremap P "+P
"=========================
nmap Q <Nop>
"=========================
colorscheme koehler_mod
:set guioptions-=T  "remove toolbar
" :set guioptions-=r  "remove right-hand scroll bar
let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
:set guioptions=m  
