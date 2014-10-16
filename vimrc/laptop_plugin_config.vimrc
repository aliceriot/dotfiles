
"crtlp
let g:ctrlp_extensions = ['buffertag']

"Simplenote.vim
source ~/.simplenoterc
let g:SimplenoteListHeight=55
let g:SimplenoteVertical=0
let g:SimplenoteFiletype='markdown'

"vim-latexsuite
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_Flavor='latex'
let g:Tex_ViewRule_pdf='mupdf'

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1

"vim-slime
"let g:slime_target = "tmux"

"tslime.vim
let g:tsline_ensure_trailing_newlines = 1


"haskellmode_vim
au BufEnter *.hs compiler ghc
let g:haddock_browser="/usr/bin/chromium"
