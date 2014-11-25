""
"" Thanks:
""   Gary Bernhardt  <destroyallsoftware.com>
""   Drew Neil  <vimcasts.org>
""   Tim Pope  <tbaggery.com>
""   Mislav Marohnić  <mislav.uniqpath.com>
""   Bruno Sutic  <github.com/bruno->
""

set nocompatible

" PLUGINS {{{1

source ~/.vim/bundle/vim-plug/plug.vim

call plug#begin("~/.vim/bundle")

Plug 'tpope/vim-sensible'              " sensible defaults

" File/buffer management {{{2
Plug 'tpope/vim-vinegar'               " nicely enhances Netrw
Plug 'tpope/vim-eunuch'                " Unix-like commands (:Remove, :Rename, ...)
Plug 'tpope/vim-projectionist'         " define connections between files
Plug 'tpope/vim-obsession'             " saves Vim session to a file
Plug 'tpope/vim-unimpaired'            " mappings for traversal through lists

" Searching {{{2
Plug 'mileszs/ack.vim'                 " vim wrapper around ack
Plug 'nelstrom/vim-visual-star-search' " * and # in visual mode
Plug 'tpope/vim-abolish'               " handles case styles (camelCase, MixedCase, ...)
Plug 'nelstrom/vim-qargs'              " :Qargs - populates arglist with quickfix items

Plug 'MarcWeber/vim-addon-mw-utils'    " (dependency #1)
Plug 'tomtom/tlib_vim'                 " (dependency #2)
Plug 'garbas/vim-snipmate'             " TextMate-like snippets

" Editing {{{2
Plug 'tpope/vim-repeat'                " allows plugins to make their commands repeatable with '.'
Plug 'tpope/vim-endwise'               " inserts automatic 'end' keywords
Plug 'tpope/vim-commentary'            " enables commenting areas of text
Plug 'junegunn/vim-easy-align'         " solves alignment by given characters
Plug 'tpope/vim-surround'              " surrounds text with delimiters
Plug 'AndrewRadev/splitjoin.vim'       " code expressions: mutliline <=> single-line
Plug 'tommcdo/vim-exchange'            " enables exchanging two parts of text

" Movement {{{2
Plug 'bruno-/vim-vertical-move'        " very useful in visual-block mode

" Text objects {{{2
Plug 'bruno-/vim-space'                " text object for whitespace
Plug 'kana/vim-textobj-user'           " helps plugins create text objects
Plug 'kana/vim-textobj-entire'         " text object for the entire file
Plug 'wellle/targets.vim'              " text objects on steroids

" Git & GitHub {{{2
Plug 'airblade/vim-gitgutter'          " displays Git diff in Vim's sign column
Plug 'junegunn/vim-emoji'              " emoji completion, useful for pull requests
Plug 'tpope/vim-fugitive'              " Git wrapper so awesome it should be illegal
Plug 'tpope/vim-rhubarb'               " omni-completion of GitHub issues and collaborators

" Terminal & Tmux & Vim {{{2
Plug 'tmux-plugins/vim-tmux'           " Tmux syntax files & man shortcuts
Plug 'justinmk/vim-gtfo'               " opens Terminal/Finder in current file's working directory
Plug 'tpope/vim-dispatch'              " async execution of commands (uses tmux if available)
Plug 'tpope/vim-scriptease'            " helper commands for writing VimScript
Plug 'kana/vim-vspec'                  " testing framework
Plug 'junegunn/vader.vim'              " testing framework

" Misc {{{2
Plug 'tpope/vim-characterize'          " `ga` displays more information about a character
Plug 'bruno-/vim-husk'                 " emacs mappings for Vim's command line

" Ruby {{{2
Plug 'vim-ruby/vim-ruby'               " Ruby syntax files and mappings
Plug 'tpope/vim-bundler'               " Gemfile syntax & adds gems to tags/path
Plug 'tpope/vim-rake'                  " :Rake command * adds stdlib to tags/path
Plug 't9md/vim-ruby-xmpfilter'         " execute Ruby inside the buffer
Plug 'tpope/vim-rails'                 " shitloads of useful things for Rails projects
Plug '/Users/janko/Code/vim-test'      " run tests from Vim (RSpec, Cucumber, Minitest)

" JavaScript {{{2
Plug 'pangloss/vim-javascript'         " JavaScript syntax files
Plug 'kchmck/vim-coffee-script'        " CoffeeScript syntax files & compiling commands

" HTML {{{2
Plug 'othree/html5.vim'                " adds HTML5 tags and attributes
Plug 'tpope/vim-ragtag'                " mappings for editing XML/HTML files

" Templating languages {{{2
Plug 'AndrewRadev/vim-eco'             " https://github.com/sstephenson/eco
Plug 'slim-template/vim-slim'          " https://github.com/slim-template/slim
Plug 'chriseppstein/vim-haml'          " https://github.com/haml/haml

" Markdown & LaTeX {{{2
Plug 'tpope/vim-markdown'              " Markdown syntax files
Plug 'Eckankar/vim-latex-folding'      " Folding for LaTeX documents

" Other languages {{{2
Plug 'elixir-lang/vim-elixir'          " Elixir syntax files

call plug#end()

" GENERAL CONFIGURATION {{{1

set exrc " load vimrc from current directory

colorscheme vwilight

set number             " show line numbers
set cursorline         " highlight the line of the cursor
set colorcolumn=81     " highlight 81's column

set lazyredraw         " don't redraw the screen between sequential macro executions
set virtualedit=block  " allow virtual editing in visual-block mode

" Buffers
set updatecount=0      " disable swap files; systems don't crash that often these days
set autowrite          " autowrite unsaved buffers before making them hidden

" Wrapping
set nowrap             " don't wrap lines
set linebreak          " soft wrap only on word boundaries

" Whitespace
set tabstop=2          " a tab is two spaces
set shiftwidth=2       " an autoindent (with <<) is two spaces
set expandtab          " use spaces, not tabs
set nojoinspaces       " Use only 1 space after "." when joining lines, not 2

" Indicator chars
set list               " Show invisible characters
set showbreak=↪\ 
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮

" Searching
set gdefault           " have :s///g flag by default on

" More intuitive splitting
set splitright
set splitbelow

if has("statusline") && !&cp
  set statusline=%f\ %m\ %r     " filename, modified, readonly
  set statusline+=%y
  set statusline+=%{fugitive#statusline()}
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v          " current column
endif

" SPECIFIC SETTINGS {{{1

" default shell syntax
let g:is_bash = 1

" incresase size of preview windows (e.g. fugitive's :Gstatus)
set previewheight=25

" allow folding of single lines
set foldminlines=0

" vim-gitgutter
let g:gitgutter_sign_modified_removed = "~" " default is ~_, but it's cluttery
let g:gitgutter_sign_column_always = 1

" disable \\ mapping in vim-commentary, to get used to `gc`
let g:commentary_map_backslash = 0

" enable Markdown folding
let g:markdown_folding = 1

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


" AUTOCOMMANDS {{{1

if has("autocmd")
  " Automatically recognize folding markers in Vim files
  au FileType vim setl foldmethod=marker
  " Disable folding for Ruby files (it can be slow, and I'm not using it)
  au FileType ruby setl foldmethod=manual

  " Avoid showing trailing whitespace when in insert mode
  au InsertEnter * set listchars-=trail:•
  au InsertLeave * set listchars+=trail:•

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json setf javascript

  " https://github.com/sstephenson/bats
  au BufNewFile,BufRead *.bats setf sh

  " Don't fold the whole document in Markdown files
  au FileType markdown setl foldlevel=1
  " Don't automaticaly fold git commit diffs
  au FileType git setl nofoldenable
  " Don't automaticaly fold snippets
  au FileType snippets setl nofoldenable

  " Do automatic formatting on commit messages (but not pull requests)
  au VimEnter COMMIT_EDITMSG setl formatoptions+=a
  " Check spelling in commit messages
  au FileType gitcommit setlocal spell

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


" LEADER MAPPINGS {{{1

let mapleader = ","
" map the reverse character search key to backslash
noremap \ ,

" toggle between last open buffers
nmap <leader><leader> <c-^>

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


" OTHER MAPPINGS & COMMANDS {{{1

" easier access to clipboard register
map + "+

" to not have to use arrow keys for recalling commands from history
cmap <C-p> <Up>
cmap <C-n> <Down>

" expand %% to current directory in command-line mode
" http://vimcasts.org/e/14
cmap %% <C-R>=expand('%:h').'/'<cr>

" Fix the & command in normal+visual modes
nmap & :&&<Enter>
xmap & :&&<Enter>

" set/unset automatic formatting (unimpaired-style)
nmap [oa :set formatoptions+=a<CR>
nmap ]oa :set formatoptions-=a<CR>
" set/unset hard wrapping (unimpaired-style)
nmap [oH :set textwidth=80<CR>
nmap ]oH :set textwidth=0<CR>

" toggle the current fold
nmap <Space> za

" map "|" to vim-easy-align
xmap <Bar> <Plug>(EasyAlign)
nmap <Bar> <Plug>(EasyAlign)ip

" ABBREVIATIONS {{{1

" :find
cabbrev f find
cabbrev sf sfind
cabbrev vf vert sfind

" :help
cabbrev vh vert help
