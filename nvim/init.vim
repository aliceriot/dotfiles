
let mapleader = "\<Space>" "set leader to space

""""""""""""""""""""""""""""""""""""""""""""""""""
"""plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin(stdpath('data') . '/plugged')

" JS / CoffeeScript
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'briancollins/vim-jst'
Plug 'styled-components/vim-styled-components'
Plug 'flowtype/vim-flow'

"typescript
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'HerringtonDarkholme/yats.vim'

" other web stuff
Plug 'othree/html5-syntax.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elzr/vim-json'

" reasonML
Plug 'reasonml-editor/vim-reason-plus'

" ruby
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'slim-template/vim-slim'

" crystal
Plug 'rhysd/vim-crystal'

" python
Plug 'Vimjas/vim-python-pep8-indent'

" elixir
Plug 'elixir-lang/vim-elixir'

" purescript
Plug 'raichoo/purescript-vim'
Plug 'frigoeu/psc-ide-vim'

" haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'
Plug 'eagletmt/neco-ghc'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'alx741/vim-yesod'

" colorschemes
Plug 'iCyMind/NeoSolarized'
" Plug 'chriskempson/base16-vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'morhetz/gruvbox'

" statusline
Plug 'itchyny/lightline.vim'

" tmux
Plug 'edkolev/tmuxline.vim'
Plug 'jgdavey/tslime.vim'
Plug 'wellle/tmux-complete.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" utility
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
Plug 'jamessan/vim-gnupg'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-python'
Plug 'Chiel92/vim-autoformat'
Plug 'machakann/vim-highlightedyank'
Plug 'lilydjwg/colorizer'
Plug 'vim-scripts/SyntaxRange'
Plug 'vim-scripts/ingo-library'
Plug 'tommcdo/vim-lion'
" Plug 'wellle/context.vim'

" file opening / search
Plug 'haya14busa/incsearch.vim' "nice incremental search
Plug 'rking/ag.vim' "wrapper for ag
Plug 'justinmk/vim-sneak'
Plug 'blarghmatey/split-expander'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" elm
Plug 'elmcast/elm-vim'

" go
Plug 'fatih/vim-go'

" rust
Plug 'rust-lang/rust.vim' "some rust stuff
Plug 'cespare/vim-toml'

" racket / scheme
" Plug 'vim-scripts/paredit.vim' "lisp/racket S-expressions
Plug 'wlangstroth/vim-racket'

" clojure
" Plug 'clojure-vim/nvim-parinfer.js'

" i3
Plug 'PotatoesMaster/i3-vim-syntax'

" email
" Plug 'guyzmo/notmuch-abook' "get emails out of notmuch db for autocomplete
Plug 'vim-scripts/lbdbq' "formats mail headers more nicely

" markdown / prose writing
Plug 'suan/vim-instant-markdown'
Plug 'jceb/vim-orgmode'

"xonsh
Plug 'linkinpark342/xonsh-vim'

" neovim-specific
Plug 'neomake/neomake'
Plug 'neovim/node-host'

call plug#end()

filetype plugin indent on

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
    "typescript
    autocmd FileType typescript setlocal expandtab
    autocmd FileType typescript setlocal autoindent
    autocmd FileType typescript setlocal shiftwidth=2
    autocmd FileType typescript setlocal softtabstop=2
    autocmd FileType typescript.tsx setlocal expandtab
    autocmd FileType typescript.tsx setlocal autoindent
    autocmd FileType typescript.tsx setlocal shiftwidth=2
    autocmd FileType typescript.tsx setlocal softtabstop=2
    autocmd FileType typescriptreact setlocal expandtab
    autocmd FileType typescriptreact setlocal autoindent
    autocmd FileType typescriptreact setlocal shiftwidth=2
    autocmd FileType typescriptreact setlocal softtabstop=2
    autocmd FileType typescript UltiSnipsAddFiletypes javascript-mocha
    autocmd FileType typescriptreact UltiSnipsAddFiletypes javascript-mocha
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
set termguicolors
let g:solarized_termcolors = 16
colorscheme NeoSolarized
set background=light
syntax on

"recommended by yats.vim
set re=0

"lightline
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ]
    \           ]
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

"random options
set clipboard+=unnamed
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
set lcs=trail:.,tab:>\ 
" set list

" highlight StatusLine ctermfg=blue ctermbg=yellow

"" fix the swapfile situation
set noswapfile
set backup
set backupdir=~/.config/nvim/backup//
set undodir=~/.config/nvim/undo//
set undofile

"" a few htings that are nice with JSX
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"""""""""""""""""""""""""""""""""""""""""""""""""""
"""Plugin Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0
let g:vim_jsx_pretty_colorful_config = 1
let g:flow#autoclose = 1
let g:flow#enable = 0
let g:elm_format_autosave = 1
let g:instant_markdown_slow = 1
let g:sneak#streak = 1
let g:jsx_ext_required = 0 " allow jsx syntax in normal js files
let g:EclimCompletionEngine = 'omnifunc'
let g:incsearch#auto_nohlsearch = 1
"tmuxline.vim
let g:tmuxline_preset = {
            \'a' : '#S',
            \'win'  : '#W',
            \'cwin'  : '#W',
            \'x' : '#{battery_icon} #{battery_percentage}',
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
let g:bufferline_echo = 0
let g:ag_highlight=1
let g:used_javascript_libs = 'underscore, jquery, react'
let g:tmuxcomplete#trigger = 'omnifunc'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" let g:go_fmt_command = "goimports"
let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint_d']
let g:neomake_jsx_enabled_makers = ['eslint_d']
let g:neomake_scss_enabled_makers = []
let g:indentLine_char = ">"
let g:indentLine_first_char = ">"
let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_color_gui = '#928374'
" let g:indentLine_color_gui = '#504945'
let g:indent_guides_auto_colors = 0
let g:indentLine_faster = 1
let g:indentLine_concealcursor = 0
let g:indentLine_fileTypeExclude = ['json', 'purescript', 'haskell']
let g:indentLine_conceallevel = 1
let g:UltiSnipsExpandTrigger = "<c-e>"
let g:UltiSnipsJumpForwardTrigger = "<c-e>"
let g:UltiSnipsJumpBackwardTrigger = "<c-f>"
" au! UltiSnips_AutoTrigger
let g:formatdef_my_custom_js = '"prettier-eslint --stdin --no-semi --parser babel"'
let g:formatters_javascript = ['my_custom_js']

" tslime
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" " deoplete 
" let g:tern_request_timeout = 1
" let g:tern#filetypes = [
"                 \ 'jsx',
"                 \ 'javascript.jsx',
"                 \ 'javascript',
"                 \ ]

" spell check commits
au BufNewFile,BufRead COMMIT_EDITMSG set spell

"""""""""""""""""""""""""""""""""""""""""""""""""""
"""Keybinds
"""""""""""""""""""""""""""""""""""""""""""""""""""
let localleader = "\\"

" tab navigation
nnoremap <Leader>[ :tabprevious<cr>
nnoremap <Leader>] :tabnext<cr>
nnoremap <Leader>T :tabnew<cr>

" split navigation
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-o> :vsplit<cr>
nnoremap <C-u> :split<cr>

" buffers
nnoremap <Leader>t  :enew<cr> 
nnoremap <Leader>bq :bd<cr> 

" quitting and saving
imap <C-s> <esc>:w<cr> 
nnoremap <C-s> <esc>:w<cr>
nnoremap <Leader>w :w<cr>
map Q :qa<cr>
nnoremap <Leader>q :q<cr> 

" search
let hlstate=0 
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" selecting popup items
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" browsing docs, static analysis, etc
nnoremap <Leader>ft :FlowType<cr>
nnoremap <Leader>fm :FlowMake<cr>
nnoremap <Leader>nm :Neomake<cr>
nnoremap <Leader>af :Autoformat<cr>
" nnoremap <Leader>ed :ElmBrowseDocs<cr>

" some things for CoC
nnoremap <silent> <leader>i :call CocActionAsync('doHover')<cr>
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gg :call  CocAction('diagnosticToggle')<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-rls'
  \ ]

" git
nnoremap <Leader>gb :Gblame<cr>

" Telescope
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <C-p> <cmd>Telescope find_files<cr>

" number, column, scrolling, whitespace
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<cr> 
nnoremap <Leader>cl :set cursorline!<cr> 
nnoremap <Leader>cc :set cursorcolumn!<cr> 
nnoremap <Leader>ln :set number!<cr>
nnoremap <Leader>rln :set relativenumber!<cr>
nnoremap <Leader>ws :set list!<cr> 

" prose writing
nnoremap <Leader>sp :setlocal spell<cr>

" literate python
nnoremap <Leader>lp :setlocal ft=python<cr>
nnoremap <Leader>md :setlocal ft=markdown<cr>

" tslime
nmap <C-c>v <Plug>SetTmuxVars
vmap <C-c><C-c> <Plug>SendSelectionToTmux

function! RunCurrentFileAsTest ()
    let fp = fnamemodify(expand("%"), ":~:.")
    if &filetype == 'javascript' || &filetype == 'javascript.jsx'
        exec "Tmux djstest " . fp
    endif

    if &filetype == 'python'
        exec "Tmux drun tox -- -x " . fp
    endif
endfunction

function! RunCurrentFileAsWatchTest ()
    let fp = fnamemodify(expand("%"), ":~:.")
    if &filetype == 'javascript' || &filetype == 'javascript.jsx'
        exec "Tmux dwatch " . fp
    endif
endfunction

nnoremap <Leader>tf :call RunCurrentFileAsTest()<cr>
nnoremap <Leader>tw :call RunCurrentFileAsWatchTest()<cr>
nnoremap <Leader>esl :Tmux fasteslint<cr>
nnoremap <Leader>flw :Tmux flow<cr>
nnoremap <Leader>faf :Tmux npm run fmt<cr>
