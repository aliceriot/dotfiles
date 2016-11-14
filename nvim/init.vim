""""""""""""""""""""""""""""""""""""""""""""""""""
"""Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

let mapleader = "\<Space>" "set leader to space

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" JS / CoffeeScript
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mtscout6/vim-cjsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'leafgarland/typescript-vim'

" other web stuff
Plugin 'othree/html5-syntax.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'elzr/vim-json'

" ruby
Plugin 'tpope/vim-bundler'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'

" elixir
Plugin 'elixir-lang/vim-elixir'

" purescript
Plugin 'raichoo/purescript-vim'
Plugin 'frigoeu/psc-ide-vim'

" haskell
Plugin 'neovimhaskell/haskell-vim'
Plugin 'eagletmt/neco-ghc'

" colorschemes
Plugin 'altercation/vim-colors-solarized' "solarized plugin
Plugin 'chriskempson/base16-vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'

" statusline
Plugin 'itchyny/lightline.vim'

" tmux
Plugin 'edkolev/tmuxline.vim' "makes tmux pretty
Plugin 'sjl/tslime.vim' "send text to a tmux pane
Plugin 'wellle/tmux-complete.vim' "autocomplete with text in tmux buffers

" git
Plugin 'tpope/vim-fugitive' "tpopes git wrapper
Plugin 'junegunn/gv.vim'

" utility
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-commentary' "gc to toggle comments
Plugin 'tpope/vim-rsi' "gives readline bindings
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired' "adds some keybinds?
Plugin 'tpope/vim-vinegar' "makes vim directory browser nicer
Plugin 'terryma/vim-multiple-cursors' "sublime-like cursors
Plugin 'neomake/neomake'
Plugin 'Yggdroot/indentLine'
Plugin 'jamessan/vim-gnupg'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'valloric/youcompleteme' "the best completion ever
Plugin 'Chiel92/vim-autoformat'

" file opening / search
Plugin 'haya14busa/incsearch.vim' "nice incremental search
Plugin 'ctrlpvim/ctrlp.vim' "fuzzy search
Plugin 'rking/ag.vim' "wrapper for ag
Plugin 'justinmk/vim-sneak'
Plugin 'blarghmatey/split-expander'

" elm
Plugin 'elmcast/elm-vim'

" go
Plugin 'fatih/vim-go'

" rust
Plugin 'rust-lang/rust.vim' "some rust stuff

" C/C++
" Plugin 'jeaye/color_coded' "not yet in neovim :(

" racket / scheme
Plugin 'vim-scripts/paredit.vim' "lisp/racket S-expressions
Plugin 'wlangstroth/vim-racket' "some stuff for racket-lang

" i3
Plugin 'PotatoesMaster/i3-vim-syntax'

" email
Plugin 'guyzmo/notmuch-abook' "get emails out of notmuch db for autocomplete
Plugin 'vim-scripts/lbdbq' "formats mail headers more nicely

" markdown / prose writing
Plugin 'suan/vim-instant-markdown'
Plugin 'reedes/vim-pencil' "soft/hard wraps for txt,md,email
Plugin 'jceb/vim-orgmode'

"xonsh
Plugin 'linkinpark342/xonsh-vim'

" neovim-specific
if has('nvim')
endif

call vundle#end()
filetype plugin indent on "filetype based indenting 

"""""""""""""""""""""""""""""""""""""""""""""""""""
"""general configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""

augroup myfiletypes
    autocmd! 
    autocmd BufRead,BufNewFile *.arb setfiletype ruby
    autocmd FileType coffee setlocal expandtab
    autocmd FileType coffee setlocal autoindent
    autocmd FileType coffee setlocal shiftwidth=2
    autocmd FileType coffee setlocal softtabstop=2
    "html
    autocmd FileType html setlocal expandtab
    autocmd FileType html setlocal autoindent
    autocmd FileType html setlocal shiftwidth=2
    autocmd FileType html setlocal softtabstop=2
    autocmd FileType htmldjango setlocal expandtab
    autocmd FileType htmldjango setlocal autoindent
    autocmd FileType htmldjango setlocal shiftwidth=2
    autocmd FileType htmldjango setlocal softtabstop=2
    autocmd FileType eruby setlocal expandtab
    autocmd FileType eruby setlocal autoindent
    autocmd FileType eruby setlocal shiftwidth=2
    autocmd FileType eruby setlocal softtabstop=2
    "scss
    autocmd FileType scss setlocal expandtab
    autocmd FileType scss setlocal autoindent
    autocmd FileType scss setlocal shiftwidth=2
    autocmd FileType scss setlocal softtabstop=2
    autocmd FileType scss setlocal omnifunc=csscomplete#CompleteCSS
    "js
    autocmd FileType javascript setlocal expandtab
    autocmd FileType javascript setlocal autoindent
    autocmd FileType javascript setlocal shiftwidth=2
    autocmd FileType javascript setlocal softtabstop=2
    autocmd FileType javascript UltiSnipsAddFiletypes javascript-es6 
    autocmd FileType javascript UltiSnipsAddFiletypes javascript-mocha
    "org
    autocmd FileType org setlocal foldenable
    autocmd FileType org setlocal nolist
    "go
    autocmd FileType go setlocal tabstop=2
    autocmd FileType go setlocal shiftwidth=2
    "purescript
    autocmd FileType purescript setlocal shiftwidth=2
augroup END
" autocmd! BufWritePost * Neomake

"colorscheme
colorscheme gruvbox
set background=light
syntax on

let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ],
    \             [ 'ctrlpmark' ] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \ },
    \ 'component_function': {
    \   'fugitive': 'LightLineFugitive'
    \ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ },
    \ }

function! LightLineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? branch : ''
  endif
  return ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction


"random options
set termguicolors
set relativenumber
let ruby_operators=1
let ruby_space_errors=1
let ruby_no_expensive=1
set hidden
set lazyredraw
set number
set wildmenu "better command line completion
set modeline 
set nofoldenable "no goddamn folding
set cursorline "line highlighting
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
set incsearch
set ignorecase
set smartcase
set hlsearch "highlight searches
set smartindent
set backspace=indent,eol,start
set tabstop=8
set expandtab
set shiftwidth=4
set ruler
set spelllang=en_us "spellcheck is in US english
set grepprg=grep\ -nH\ $*
set laststatus=2
set noshowmode
set ttyfast
set mouse=a
if !has('nvim')
    set ttymouse=sgr
endif
set mousemodel=extend
set noesckeys
set lcs=trail:.,tab:>\ 
set list

" highlight StatusLine ctermfg=blue ctermbg=yellow
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
    let g:ctrlp_use_caching = 0
    let g:CrtlSpaceglobCommand = 'ag %s -l --nocolor --hidden -g ""'
endif

"" fix the swapfile situation
set noswapfile
set backup
set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//

"""""""""""""""""""""""""""""""""""""""""""""""""""
"""Plugin Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vim_json_syntax_conceal = 0
let g:javascript_plugin_flow = 1
let g:flow#autoclose = 1
let g:elm_format_autosave = 1
let g:instant_markdown_slow = 1
let g:sneak#streak = 1
let g:jsx_ext_required = 0 " allow jsx syntax in normal js files
let g:EclimCompletionEngine = 'omnifunc'
let g:ctrlp_extensions = ['buffertag']
let g:incsearch#auto_nohlsearch = 1
"tmuxline.vim
let g:tmuxline_preset = {
            \'a' : '#S',
            \'win'  : '#W',
            \'cwin'  : '#W',
            \'x' : '#(battery)',
            \'y' : '%l:%M',
            \'z' : '#h',
            \'options': {
            \'status-justify': 'left'}
            \}
let g:tmuxline_powerline_separators = 0
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_Flavor='latex'
let g:Tex_ViewRule_pdf='mupdf'
let g:tsline_ensure_trailing_newlines = 1
let g:pencil#wrapModeDefault = 'hard'
let g:pencil#autoformat = 1
let g:pencil#conceallevel = 0
let g:bufferline_echo = 0
let g:ag_highlight=1
let g:used_javascript_libs = 'underscore, jquery, react'
let g:tmuxcomplete#trigger = 'omnifunc'
let g:ycm_semantic_triggers = {
            \ 'c' : ['->', '.', 're!\w'],
            \ 'elm': ['.', 're!\w'],
            \ 'haskell' : ['.'],
            \}
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_use_ultisnips_complete = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint_d']
let g:neomake_jsx_enabled_makers = ['eslint_d']
let g:neomake_scss_enabled_makers = []
let g:indentLine_char = ">"
let g:indentLine_first_char = ">"
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_color_gui = '#928374'
" let g:indentLine_color_gui = '#504945'
let g:indent_guides_auto_colors = 0
let g:indentLine_faster = 1
let g:indentLine_concealcursor = 0
let g:indentLine_fileTypeExclude = ['json', 'purescript']
let g:indentLine_conceallevel = 1
let g:UltiSnipsExpandTrigger = "<c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-e>"
let g:UltiSnipsJumpBackwardTrigger = "<c-f>"

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
  autocmd FileType tex          call pencil#init({'wrap': 'hard'})
augroup END

" mash caps to toggle insert mode
nnoremap <F12> i
inoremap <F12> <esc>l

" vimux
map <Leader>vrs :call VimuxRunCommand("clear; vdo rspec " . bufname("%"))<CR>
map <Leader>vrb :call VimuxRunCommand("clear; pry")<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""
"""Keybinds
"""""""""""""""""""""""""""""""""""""""""""""""""""
let hlstate=0 
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
nnoremap <Leader>ws :set list!<CR> 
imap <C-s> <esc>:w<cr> 
nnoremap <C-s> <esc>:w<cr>
nnoremap <Leader>w :w<cr>
map Q :qa<cr>
nnoremap <Leader>q :q<cr> 
nnoremap <Leader>sp :setlocal spell<cr>
nnoremap <Leader>lp :setlocal ft=python<cr>
nnoremap <Leader>md :setlocal ft=markdown<cr>
nnoremap <Leader>ed :ElmBrowseDocs<cr>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR> 
nnoremap <Leader>cl :set cursorline!<CR> 
nnoremap <Leader>cc :set cursorcolumn!<CR> 
nnoremap <Leader>ln :set number!<cr>
nnoremap <Leader>rln :set relativenumber!<cr>
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
"create splits
nnoremap <C-o> :vsplit<cr>
nnoremap <C-u> :split<cr>
"window navigation
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Leader>yd :YcmCompleter GoToDefinition<cr>
nnoremap <Leader>yrr :YcmCompleter RefactorRename 
nnoremap <Leader>p :CtrlPBufTag<cr>
nnoremap <Leader>o :CtrlPMRU<cr>
nnoremap <C-b> :CtrlPBuffer<cr>
" nnoremap <C-f> :Ag 
let localleader = "\\"
nnoremap <silent> <Leader>tp :TogglePencil<cr>
nnoremap <Leader>rb :'<,'>s/pick/f/g<cr>
nnoremap <Leader>gb :Gblame<cr>
nnoremap <Leader>[ :tabprevious<cr>
nnoremap <Leader>] :tabnext<cr>
nnoremap <Leader>T :tabnew<cr>
"find flowtype for a variable
nnoremap <Leader>ft :FlowType<cr>
nnoremap <Leader>nm :Neomake<cr>