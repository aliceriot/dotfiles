
let mapleader = "\<Space>" "set leader to space

let hlstate=0 "toggle search highlighting on/off
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

imap <C-s> <esc>:w<cr> 
nnoremap <Leader>w :w<cr>
nnoremap <Leader>q :q<cr> 
nnoremap <Leader>sp :setlocal spell<cr>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
 
"see whitespace
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
nnoremap <Leader>ws :set list!<CR> 

nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR> "centered cursor
nnoremap <Leader>cl :set cursorline!<CR> "cursorline highlight
nnoremap <Leader>cc :set cursorcolumn!<CR> "cursorcolumn highlight

nnoremap <Leader>bl :buffers<cr> 
nnoremap <Leader>b1 :buffer1<cr> 
nnoremap <Leader>b2 :buffer2<cr> 
nnoremap <Leader>b3 :buffer3<cr> 
nnoremap <Leader>b4 :buffer4<cr> 
nnoremap <Leader>b5 :buffer5<cr> 
nnoremap <Leader>b6 :buffer6<cr> 
nnoremap <Leader>b7 :buffer7<cr> 
nnoremap <Leader>t  :enew<cr> 
nnoremap <Leader>bq :bd<cr> 

nnoremap <Leader>o :vsplit<cr> "verti split
nnoremap <Leader>u :split<cr> "horiz split
nnoremap <Leader>j <C-W>j "split movement
nnoremap <Leader>k <C-W>k "split movement
nnoremap <Leader>h <C-W>h "split movement
nnoremap <Leader>l <C-W>l "split movement
