""
"" Thanks:
""   Gary Bernhardt  <destroyallsoftware.com>
""   Drew Neil  <vimcasts.org>
""   Tim Pope  <tbaggery.com>
""   Mislav Marohnić  <mislav.uniqpath.com>
""   Bruno Sutic  <github.com/bruno->
""

set nocompatible
set exrc " load vimrc from current directory

"""""""""""
" PLUGINS "
"""""""""""

source ~/.vim/bundle/vim-plug/plug.vim

call plug#begin("~/.vim/bundle")

" Sensible defaults
Plug 'tpope/vim-sensible'

" File/buffer management
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-obsession'

" Searching
Plug 'mileszs/ack.vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'tpope/vim-abolish'
Plug 'nelstrom/vim-qargs'

" Editing
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'bruno-/vim-vertical-move'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tommcdo/vim-exchange'

" Snippets (first two are dependencies)
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" Text objects
Plug 'bruno-/vim-space'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'wellle/targets.vim'

" Git, GitHub
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-emoji'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Misc
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-characterize'
Plug 'bruno-/vim-husk'
Plug 'justinmk/vim-gtfo'

" Languages
Plug 'othree/html5.vim'
Plug 'AndrewRadev/vim-eco'
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'
Plug 'chriseppstein/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-lang/vim-elixir'
Plug 'tmux-plugins/vim-tmux'

" HTML
Plug 'tpope/vim-ragtag'

" Ruby
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 't9md/vim-ruby-xmpfilter'
Plug 'tpope/vim-rails'
Plug '/Users/janko/Code/vim-test'

" Vim testing frameworks
Plug 'kana/vim-vspec'
Plug 'junegunn/vader.vim'

call plug#end()

"""""""""""""""""""""""""
" GENERAL CONFIGURATION "
"""""""""""""""""""""""""

colorscheme vwilight

set number         " show line numbers
set cursorline     " highlight the line of the cursor
set colorcolumn=81 " highlight 81's column

" don't update the display while executing macros
set lazyredraw

" Disable swap files; systems don't crash that often these days
set updatecount=0

" incresase size of preview windows (e.g. fugitive's :Gstatus)
set previewheight=25

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
" Joining lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j            " Delete comment char when joining commented lines
endif
set nojoinspaces                  " Use only 1 space after "." when joining lines, not 2

" Indicator chars
set list                          " Show invisible characters
set showbreak=↪\ 
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮

" Searching
set hlsearch                      " highlight matches
set gdefault                      " have :s///g flag by default on

" More intuitive splitting
set splitright
set splitbelow

if has("statusline") && !&cp
  set statusline=%f\ %m\ %r     " filename, modified, readonly
  set statusline+=%{fugitive#statusline()}
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v          " current column
endif

"""""""""""""""""""""
" SPECIFIC SETTINGS "
"""""""""""""""""""""

" default shell syntax
let g:is_bash=1

" vim-gitgutter
let g:gitgutter_sign_modified_removed = "~" " default is ~_, but it's cluttery

" vim-emoji
set completefunc=emoji#complete

set wildignore+=.DS_Store,.git/**,tmp/**,*.log,.bundle/**
set wildignore+=*.rbc,.rbx,*.scssc,*.sassc,.sass-cache,*.pyc,node_modules/**

" use :find for files inside a project
set path+=**

" don't search 'tags' for autocompletion, it's too slow when you have 'tags'
" loaded from all gems
set complete-=t

" Use vim files for the Go language
set runtimepath+=$GOROOT/misc/vim

if has("autocmd")
  " Avoid showing trailing whitespace when in insert mode
  au InsertEnter * set listchars-=trail:•
  au InsertLeave * set listchars+=trail:•

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json setf javascript

  " https://github.com/sstephenson/bats
  au BufNewFile,BufRead *.bats setf sh

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif

  " mark Jekyll YAML frontmatter as comment
  au BufNewFile,BufRead *.{md,markdown,html,xml} sy match Comment /\%^---\_.\{-}---$/

  " magic markers: enable using 'H/S/J/C to jump back to
  " last HTML, stylesheet, JS or Ruby code buffer
  au BufLeave *.{erb,html}      exe "normal! mH"
  au BufLeave *.{css,scss,sass} exe "normal! mS"
  au BufLeave *.{js,coffee}     exe "normal! mJ"
  au BufLeave *.{rb}            exe "normal! mC"

  " make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python setl softtabstop=4 tabstop=4 shiftwidth=4

  " enable .ejs files (Sprockets)
  au BufNewFile,BufRead *.ejs setf html
endif


"""""""""""""""""""
" LEADER MAPPINGS "
"""""""""""""""""""

let mapleader=","

" toggle between last open buffers
nmap <leader><leader> <c-^>

" open a file
nmap <leader>o :!open %<CR>

" alignment mappings
nmap <leader>a{  :Tabularize /{<CR>
vmap <leader>a{  :Tabularize /{<CR>
nmap <leader>a\| :Tabularize /\|<CR>
vmap <leader>a\| :Tabularize /\|<CR>
nmap <leader>a:  :Tabularize /:\zs/l0l1<CR>
vmap <leader>a:  :Tabularize /:\zs/l0l1<CR>
nmap <leader>a,  :Tabularize /,\zs/l0l1<CR>
vmap <leader>a,  :Tabularize /,\zs/l0l1<CR>
nmap <leader>a>  :Tabularize /=><CR>
vmap <leader>a>  :Tabularize /=><CR>

" Shortcuts for testing
nmap <leader>w :TestNearest<CR>
nmap <leader>t :TestFile<CR>
nmap <leader>T :TestSuite<CR>

" Shortcut for running files
nmap <leader>r :exec ":!~/bin/run " . expand("%")<cr>

" ruby-xmpfilter
let g:xmpfilter_cmd = "seeing_is_believing"
nmap <leader>xm <Plug>(seeing_is_believing-mark)
xmap <leader>xm <Plug>(seeing_is_believing-mark)
nmap <leader>xr <Plug>(seeing_is_believing-run_-x)
xmap <leader>xr <Plug>(seeing_is_believing-run_-x)
nmap <leader>xc <Plug>(seeing_is_believing-clean)
xmap <leader>xc <Plug>(seeing_is_believing-clean)


"""""""""""""""""""""""""""""
" OTHER MAPPINGS & COMMANDS "
"""""""""""""""""""""""""""""

" easier access to clipboard register
map + "+

" to not have to use arrow keys for recalling commands from history
cmap <C-p> <Up>
cmap <C-n> <Down>

" easier navigation between split windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" expand %% to current directory in command-line mode
" http://vimcasts.org/e/14
cmap %% <C-R>=expand('%:h').'/'<cr>

" Fix the & command in normal+visual modes
nmap & :&&<Enter>
xmap & :&&<Enter>

" set/unset automatic formatting (unimpaired-style)
nmap [oa :set formatoptions+=a<CR>
nmap ]oa :set formatoptions-=a<CR>

" toggle the current fold
nmap <Space> za


"""""""""""""""""""""""""""""
" ABBREVIATIONS
"""""""""""""""""""""""""""""

" :find
cabbrev f find
cabbrev sf sfind
cabbrev vf vert sfind

" :help
cabbrev vh vert help
