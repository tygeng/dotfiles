"==========
"" adjust configuration for such hostile environment as Windows {{{
if has("mac") 
set clipboard=unnamed
map [A <Up>
map [B <Down>
map [D <Left>
map [C <Right>
imap [A <Up>
imap [B <Down>
imap [D <Left>
imap [C <Right>
vmap [A <Up>
vmap [B <Down>
vmap [D <Left>
vmap [C <Right>
else
set clipboard=unnamedplus
set guifont=Monospace\ 9
endif
"set up color
if !has("gui_running")
    set t_Co=256
endif
" set file make program according to file type. Even if vim is closed the
" history will still be kept
au FileType markdown set makeprg=multimarkdown\ %\ -o\ %.html
" au FileType tex set makeprg=latexmk\ -pdfdvi\ %
au FileType tex set makeprg=pdflatex\ %
inoremap <M-4> <nop>
au FileType tex inoremap <M-4> $$<Left>
au FileType tex inoremap <M-k> <CR>\[<CR>\]<Up><CR>

set tw=0
au FileType cpp,c,java,tex,text  set tw=79
syntax sync minlines=256
" set mouse=a

"=========================
" set encoding priority
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,cp936,latin1,ucs-bom
set termencoding=utf-8
" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo/
set undolevels=1000
set undoreload=10000
" remember last position
set viminfo='10,\"100,:20,%,n~/.viminfo
"---------------------------
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
set incsearch
set smartcase ignorecase
"=========================
" for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
au FileType c let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf_c.py'
au FileType objc let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf_objc.py'
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:EclimCompletionMethod = 'omnifunc'
" syntastic
" let g:syntastic_c_checkers=['make']
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_loc_list_height=5
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['c'],
                           \ 'passive_filetypes': ["tex"] }

set statusline=%<\ %n:%f\ %m%r%y%{SyntasticStatuslineFlag()}%=(%l\ ,\ %c%V)\ Total:\ %L\ 
" work around for the location list bug
nnoremap ZQ :lcl<bar>q!<CR>
nnoremap ZZ :lcl<bar>w<bar>lcl<bar>q<CR>
" end for syntastic
" powerline
" let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'short'
set laststatus=2
" =========================
" remap keys
" :set virtualedit=all
nnoremap <Right> *
nnoremap <Left> #
nnoremap h g^
nnoremap i gk
nnoremap j h
nnoremap k gj
nnoremap ; g$
nnoremap <Space> i
nnoremap <Right> *
nnoremap <Left> #
vnoremap h g^
vnoremap i gk
vnoremap j h
vnoremap k gj
vnoremap ; g$
vnoremap <Space> c
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>
inoremap <Home> <Esc>g^i
nnoremap H ;


" inoremap <S-Left> <Esc>v<Left>
" inoremap <S-Right> <Esc>v<Right>
" inoremap <S-Up> <Esc>v<Up>
" inoremap <S-Down> <Esc>v<Down>
" inoremap <S-Home> <Esc>v<Home>
" inoremap <S-End> <Esc>v<End>
" nnoremap <S-Left> v<Left>
" nnoremap <S-Right> v<Right>
" nnoremap <S-Up> v<Up>
" nnoremap <S-Down> v<Down>
" nnoremap <S-Home> v<Home>
" nnoremap <S-End> v<End>
" vnoremap <S-Up> <Up>
" vnoremap <S-Down> <Down>
" vnoremap <S-Left> <Left>
" vnoremap <S-Right> <Right>
" vnoremap <S-Home> <Home>
" vnoremap <S-End> <End> 
"=========================
filetype on
filetype plugin on
filetype indent on
"=========================
"simple comment
map <silent> s :call Co(&ft)<CR>
"=========================
"set F2 to toggle paste mode
nnoremap <F3> :set hlsearch!<CR>
nnoremap <Silent> <F2> :set invpaste paste?<CR>
inoremap <Silent> <F2> <Esc>:set invpaste paste?<CR>a
set pastetoggle=<F2>
set showmode
"=========================
"c support for jump among files
" nmap <F7> <C-T>
" imap <F7> <Esc><F7>a
map <S-F8> :vsp<CR>:wincmd l<CR>:exec("tag ".expand("<cword>"))<CR>:wincmd h<CR>
nmap <F8> <C-]>
imap <F8> <Esc><F8>a
nmap <F9> :w<CR>:FSHere<CR>
imap <F9> <Esc><F9>a
map <S-F9> :w<CR>:vsp<CR>:FSRight<CR>:wincmd h<CR>
set tags=./tags;/
nnoremap S :w<CR>
autocmd FileType c,cpp,python nnoremap S :w<CR>:silent !ctags -R --fields=+iaS --extra=+f .<CR>:redraw!<CR>
" autocmd FileType tex set nocursorcolumn 
" nmap <S-F8> gf
" imap <S-F8> <Esc><S-F8>a
nmap <F7> <C-o>
imap <F7> <Esc><S-F7>a

"=========================
noremap <F1> mz:%!astyle --style=java -fjxpUd -k3 <CR>`z
imap <F1> <Esc><F1>
"=========================
" nnoremap <F1> :set wrap!<CR>
" inoremap <F1> <Esc><F1>a
"=========================
"next error for errormarker
" let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
" nnoremap > :cn<CR>
" nnoremap < :cp<CR>
"=========================
noremap <F5> :w<CR>:silent make<CR>:redraw!<CR>
imap <F5> <Esc><F5>a
nmap <A-F5> :SyntasticCheck<CR>
imap <A-F5> <Esc><A-F5>a
nmap <A-F6> :SyntasticToggleMode<CR>
imap <A-F6> <Esc><A-F6>
"=========================
"switch among opened windows
nnoremap <silent> <S-Up> :wincmd k<CR>
nnoremap <silent> <S-Down> :wincmd j<CR>
nnoremap <silent> <S-Left> :wincmd h<CR>
nnoremap <silent> <S-Right> :wincmd l<CR>
inoremap <silent> <S-Up> <Esc>:wincmd k<CR>a
inoremap <silent> <S-Down> <Esc>:wincmd j<CR>a
inoremap <silent> <S-Left> <Esc>:wincmd h<CR>a
inoremap <silent> <S-Right> <Esc>:wincmd l<CR>a
"=========================
nnoremap <F4> :set spell!<CR>
inoremap <F4>  <Esc>:set spell!<CR>a
nnoremap U :redo<CR>
" nnoremap R bdwi
nnoremap <Tab> >>
nnoremap <S-Tab> <<
nnoremap w viw
vnoremap w e
nnoremap W viW
nnoremap D diw
nnoremap C ciw
nnoremap Y yiw
nnoremap v( vi(
nnoremap v) va(
nnoremap v" vi"
nnoremap v' vi'
nnoremap v< vi<
nnoremap v> va>
nnoremap v{ vi{
nnoremap v} va}
nnoremap v[ vi[
nnoremap v] va]
cnoremap <Space><Space> <Space><Bar><Space>
" nnoremap d( di(
" nnoremap d) da(
" nnoremap d" di"
" nnoremap d' di'
" nnoremap d< di<
" nnoremap d> da>
" nnoremap d{ di{
" nnoremap d} da}
" nnoremap d[ di[
" nnoremap d] da]
" nnoremap c( ci(
" nnoremap c) ca(
" nnoremap c" ci"
" nnoremap c' ci'
" nnoremap c< ci<
" nnoremap c> ca>
" nnoremap c{ ci{
" nnoremap c} ca}
" nnoremap c[ ci[
" nnoremap c] ca]
" nnoremap y( yi(
" nnoremap y) ya(
" nnoremap y" yi"
" nnoremap y' yi'
" nnoremap y< yi<
" nnoremap y> ya>
" nnoremap y{ yi{
" nnoremap y} ya}
" nnoremap y[ yi[
" nnoremap y] ya]

nnoremap R :%s/\<<C-r><C-w>\>//g<Left><Left>
"=========================
"yank and paste to system clipboard
" autocmd CursorHold * :set number
" autocmd InsertEnter * :set number
" set rnu
" au BufEnter * :set rnu
" au BufLeave * :set nu
" au WinEnter * :set rnu
" au WinLeave * :set nu
" au InsertEnter * :set nu
" au InsertLeave * :set rnu
" au FocusLost * :set nu
" au FocusGained * :set rnu
" nnoremap : :set nu<CR>:
" cnoremap <silent> <CR> <CR>:set rnu<CR>
" cnoremap <silent> <Esc> <Esc>:set rnu<CR>
inoremap <C-p> <Esc>pa
nnoremap x "xx
inoremap <C-P> <Esc>Pa
autocmd VimLeave * call system("xsel -ib", getreg('+'))
"=========================
nnoremap Q {gq}
vnoremap Q gq
nmap <C-e> :vsp<bar>e 
"=========================
colorscheme koehler_mod
set guioptions=  
set cursorline cursorcolumn
syntax sync minlines=64
set re=1
autocmd InsertEnter * set nocul nocursorcolumn
autocmd InsertLeave * set cul cursorcolumn
"=======================
set backspace=indent,eol,start
set foldmethod=syntax
set foldnestmax=2      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
