""
"" Thanks:
""   Gary Bernhardt  <destroyallsoftware.com>
""   Drew Neil  <vimcasts.org>
""   Tim Pope  <tbaggery.com>
""   Janus  <github.com/carlhuda/janus>
""   Mislav Marohnić  <mislav.uniqpath.com>
""

set nocompatible
set exrc " load vimrc from current directory

"""""""""""
" PLUGINS "
"""""""""""

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Sensible defaults
Plugin 'tpope/vim-sensible'

" File/buffer management
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-obsession'

" Searching
Plugin 'mileszs/ack.vim'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-abolish'

" Editing
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'bruno-/vim-vertical-move'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'tommcdo/vim-exchange'

" Snippets (first two are dependencies)
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Text objects
Plugin 'bruno-/vim-space'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'wellle/targets.vim'

" Git, GitHub
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/vim-emoji'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

" Misc
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-characterize'
Plugin 'bruno-/vim-husk'
Plugin 'justinmk/vim-gtfo'

" Languages
Plugin 'othree/html5.vim'
Plugin 'AndrewRadev/vim-eco'
Plugin 'slim-template/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'chriseppstein/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'tmux-plugins/vim-tmux'

" HTML
Plugin 'tpope/vim-ragtag'

" Ruby
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tpope/vim-rails'
Plugin 'file:///Users/janko/Code/vim-test'

" Vim testing frameworks
Plugin 'kana/vim-vspec'
Plugin 'junegunn/vader.vim'

call vundle#end()

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
set formatoptions+=j              " Delete comment char when joining commented lines
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
  au InsertEnter * :set listchars-=trail:•
  au InsertLeave * :set listchars+=trail:•

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

" open vimrc in a new tab
nmap <leader>v :tabedit $MYVIMRC<CR>

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

" disable cursor keys in normal mode
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

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

" :Qargs - populate arglist list with quickfixlist buffers {{{2

" Convenient for executing an `argdo` on all buffers that are a result
" of a grep search.
" https://github.com/nelstrom/vim-qargs/
command! -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction


"""""""""""""""""""""""""""""
" ABBREVIATIONS
"""""""""""""""""""""""""""""

" :find
cabbrev f find
cabbrev sf sfind
cabbrev vf vert sfind

" :help
cabbrev vh vert help
