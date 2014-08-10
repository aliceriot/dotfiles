
filetype plugin indent on "filetype based indenting 
syntax enable "syntax highlighting
set wildmenu "better command line completion
set hlsearch "highlight searches
set number "line numbers
set background=dark "stuff for solarized colorscheme
colorscheme solarized "solarized colorscheme (so tasty)
"let g:solarized_termcolors=256 "necessary for terminal vim with mac os terminal (not iterm)
set modeline " autoindentation

""""python friendliness
set tabstop=8 "insert 4 spaces for tab (python standard)
set shiftwidth=4 "block indent/unindent
set expandtab "insert spaces instead of tabs
set softtabstop=4 "still have delete remove 1 tab worth of spaces
set autoindent "newline matches indentation level of line above
set shiftwidth=4
set spelllang=en_us "spellcheck is in US english
set grepprg=grep\ -nH\ $*
set foldmethod=syntax
set nojoinspaces
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python highlight Excess ctermbg=Green
    autocmd FileType python match Excess /\%79v.*/
    autocmd FileType python set nowrap
    augroup END

"mouse
set ttyfast
set mouse=a
set mousemodel=extend

