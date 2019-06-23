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

Plug 'tpope/vim-sensible'                 " sensible defaults

" File/buffer management {{{2
Plug 'tpope/vim-vinegar'                  " nicely enhances Netrw
Plug 'tpope/vim-eunuch'                   " Unix-like commands (:Remove, :Rename, ...)
Plug 'tpope/vim-projectionist'            " define connections between files
Plug 'tpope/vim-obsession'                " saves Vim session to a file
Plug 'tpope/vim-unimpaired'               " mappings for traversal through lists
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Searching {{{2
Plug 'nelstrom/vim-visual-star-search'    " * and # in visual mode
Plug 'tpope/vim-abolish'                  " handles case styles (camelCase, MixedCase, ...)
Plug 'nelstrom/vim-qargs'                 " :Qargs - populates arglist with quickfix items
Plug 'mileszs/ack.vim'                    " Vim wrapper for ack/The Silver Searcher/ripgrep

" Snippets {{{2
Plug 'MarcWeber/vim-addon-mw-utils'       " (dependency #1)
Plug 'tomtom/tlib_vim'                    " (dependency #2)
Plug 'garbas/vim-snipmate'                " TextMate-like snippets

" Editing {{{2
Plug 'tpope/vim-repeat'                   " allows plugins to make their commands repeatable with '.'
Plug 'tpope/vim-endwise'                  " inserts automatic 'end' keywords
Plug 'tpope/vim-commentary'               " enables commenting areas of text
Plug 'junegunn/vim-easy-align'            " solves alignment by given characters
Plug 'tpope/vim-surround'                 " surrounds text with delimiters
Plug 'AndrewRadev/splitjoin.vim'          " code expressions: mutliline <=> single-line
Plug 'PeterRincker/vim-argumentative'     " enables shifting items in comma-separated lists
Plug 'michaeljsmith/vim-indent-object'    " text object for lines of same indentation

" Movement {{{2
Plug 'bruno-/vim-vertical-move'           " move vertically to the end of the column
Plug 'jeetsukumaran/vim-indentwise'       " move between indentation levels

" Text objects {{{2
Plug 'bruno-/vim-space'                   " text object for whitespace
Plug 'kana/vim-textobj-user'              " helps plugins create text objects
Plug 'wellle/targets.vim'                 " text objects on steroids

" Git & GitHub {{{2
Plug 'airblade/vim-gitgutter'             " displays Git diff in Vim's sign column
Plug 'junegunn/vim-emoji'                 " emoji completion, useful for pull requests
Plug 'tpope/vim-fugitive'                 " Git wrapper so awesome it should be illegal
Plug 'tpope/vim-rhubarb'                  " omni-completion of GitHub issues and collaborators

" Terminal & Tmux & Vim {{{2
Plug 'tmux-plugins/vim-tmux'              " Tmux syntax files & man shortcuts
Plug 'justinmk/vim-gtfo'                  " opens Terminal/Finder in current file's working directory
Plug 'tpope/vim-dispatch'                 " async execution of commands (uses tmux if available)
Plug 'tpope/vim-scriptease'               " helper commands for writing VimScript
Plug 'tmux-plugins/vim-tmux-focus-events' " improved autoread

" Testing
Plug 'kana/vim-vspec'                     " RSpec-like testing framework for VimScript
Plug 'junegunn/vader.vim'                 " Cucumber-like testing framework for VimScript
Plug '/Users/janko/Code/vim-test'         " run any kind of tests from Vim (RSpec, Cucumber, Minitest)

" Misc {{{2
Plug 'tpope/vim-characterize'             " `ga` displays more information about a character
Plug 'bruno-/vim-husk'                    " emacs mappings for Vim's command line
Plug 'bruno-/vim-man'                     " improved Man pages in Vim
Plug 'ekalinin/Dockerfile.vim'            " Dockerfile syntax

" Ruby {{{2
Plug 'vim-ruby/vim-ruby'                  " Ruby syntax files and mappings
Plug 'tpope/vim-bundler'                  " Gemfile syntax & adds gems to tags/path
Plug 'tpope/vim-rake'                     " :Rake command * adds stdlib to tags/path
Plug 't9md/vim-ruby-xmpfilter'            " execute Ruby inside the buffer
Plug 'tpope/vim-rails'                    " shitloads of useful things for Rails projects

" Other languages {{{2
Plug 'pangloss/vim-javascript'            " JavaScript syntax files
Plug 'mxw/vim-jsx'                        " JSX support
Plug 'othree/html5.vim'                   " adds HTML5 tags and attributes
Plug 'tpope/vim-ragtag'                   " mappings for editing XML/HTML files
Plug 'tpope/vim-markdown'                 " Markdown syntax files
Plug '/Users/janko/Code/vim-tex-folding'  " Folding for LaTeX documents
Plug 'elixir-lang/vim-elixir'             " Elixir syntax files
Plug 'fatih/vim-go'                       " Go syntax files and commands
Plug 'kchmck/vim-coffee-script'           " CoffeeScript goodies
Plug 'AndrewRadev/vim-eco'                " https://github.com/sstephenson/eco

Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-classpath'

" For testing test.vim
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-runner'
Plug 'reinh/vim-makegreen'
Plug 'skywind3000/asyncrun.vim'

if has('nvim')
  Plug 'kassio/neoterm'                   " wrapper around NeoVim's :terminal
  Plug 'neomake/neomake'                   " asynchronous make for Neovim/Vim
endif

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
set hidden             " allow hiding unsaved buffers

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

" Don't highlight lines longer than 200 characters
set synmaxcol=400

" Casing
set fileignorecase     " ignore file and directory name case

if has("statusline") && !&cp
  set statusline=%f\ %m\ %r                " filename, modified, readonly
  set statusline+=%y                       " filetype
  " set statusline+=%{fugitive#statusline()} " current git branch
  set statusline+=\ %l/%L[%p%%]            " current line/total lines
  set statusline+=\ %v                     " current column
endif

" SPECIFIC SETTINGS {{{1

" make grep recursive
set grepprg=grep\ -n\ -r\ $*\ /dev/null

" default shell syntax
let g:is_bash = 1

" incresase size of preview windows (e.g. fugitive's :Gstatus)
set previewheight=25

" allow folding of single lines
set foldminlines=0

" vim-gitgutter
let g:gitgutter_sign_modified_removed = "~" " default is ~_, but it's cluttery
let g:gitgutter_max_signs = 1000
set signcolumn=yes

" disable \\ mapping in vim-commentary, to get used to `gc`
let g:commentary_map_backslash = 0

" enable Markdown folding
let g:markdown_fenced_languages = ['rb=ruby', 'ruby=ruby', 'erb=eruby', 'js=javascript', 'html=html', 'xml=xml', 'sql=sql']

" CTRL-^ should return to the last edited file
let g:netrw_altfile = 1

" make easy-align work with comments and strings as well
let g:easy_align_ignore_groups = [] " default is ['String', 'Comment']

" don't search for relative roots
let g:ctrlp_working_path_mode = 0

" generate runner comamnds for vim-test
let g:test#runners = {'Ruby': ['M2X']}
let g:test#runner_commands = ['RSpec', 'Minitest', 'Cucumber', 'VSpec', 'M2X']

let g:ackprg = 'rg --vimgrep'

" vim-emoji
set completefunc=emoji#complete

" ignore general temp files
set wildignore+=.DS_Store,.git/**,tmp/**,*.log,.bundle/**,node_modules/**,tags
" ignore compiled files
set wildignore+=*.rbc,.rbx,*.scssc,*.sassc,.sass-cache,*.pyc,*.gem
" ignore images
set wildignore+=*.jpg,*.jpeg,*.tiff,*.gif,*.png,*.svg,*.psd,*.pdf

" don't search 'tags' for autocompletion, it's too slow when you have 'tags'
" loaded from all gems
set complete-=t

" AUTOCOMMANDS {{{1

if has("autocmd")
  " Automatically recognize folding markers in Vim files
  autocmd FileType vim setl foldmethod=marker

  " Avoid showing trailing whitespace when in insert mode
  autocmd InsertEnter * set listchars-=trail:•
  autocmd InsertLeave * set listchars+=trail:•

  " https://github.com/soveran/mote
  autocmd BufNewFile,BufRead *.mote setf mote

  " Treat JSON files like JavaScript
  autocmd BufNewFile,BufRead *.json setf javascript
  autocmd BufNewFile,BufRead *.babelrc setf javascript

  " https://github.com/sstephenson/bats
  autocmd BufNewFile,BufRead *.bats setf sh

  " Don't fold the whole document in Markdown files
  autocmd FileType markdown setl foldlevel=1
  " Don't automaticaly fold git commit diffs
  autocmd FileType git setl nofoldenable
  " Don't automaticaly fold snippets
  autocmd FileType snippets setl nofoldenable

  " Check spelling in commit messages
  autocmd FileType gitcommit setlocal spell

  " mark Jekyll YAML frontmatter as comment
  autocmd BufNewFile,BufRead *.{md,markdown,html,xml} sy match Comment /\%^---\_.\{-}---$/

  " magic markers: enable using 'H/S/J/C to jump back to
  " last HTML, stylesheet, JS or Ruby code buffer
  autocmd BufLeave *.{erb,html}      exe "normal! mH"
  autocmd BufLeave *.{css,scss,sass} exe "normal! mS"
  autocmd BufLeave *.{js,coffee}     exe "normal! mJ"
  autocmd BufLeave *.{rb}            exe "normal! mC"

  " make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  autocmd FileType python setl softtabstop=4 tabstop=4 shiftwidth=4

  " enable .ejs files (Sprockets)
  autocmd BufNewFile,BufRead *.ejs setf html

  " set wrapping in LaTeX files and quickfix list
  autocmd FileType tex,qf setl wrap
endif


" LEADER MAPPINGS {{{1

let mapleader = ","
" map the reverse character search key to backslash
noremap \ ,

" toggle between last open buffers
nmap <leader><leader> <c-^>

" Shortcut for running files
if has('nvim')
  nmap <leader>r :call RunInTerminal('run')<cr>
  nmap <leader>p :call RunInTerminal('run-pry')<cr>
else
  nmap <leader>r :exec ":!~/bin/run " . expand("%")<cr>
  nmap <leader>p :exec ":!~/bin/run-pry " . expand("%")<cr>
end

function! RunInTerminal(script) abort
  let current_file = expand("%")
  -tabnew
  call termopen("~/bin/".a:script." ".current_file)
  startinsert
endfunction

" Shortcut for copying text syntax highlighted
nmap <leader>s :exec ":!~/bin/syntax_highlight " . expand("%")<cr>

" Shortcut for generating rdoc
nmap <leader>d :exec ":!rake rdoc"<cr>

" ruby-xmpfilter
let g:xmpfilter_cmd = "seeing_is_believing"
nmap <leader>R :call RunXmpFilter()<cr>

function! RunXmpFilter() abort
  let l:line = getline('.')
  if l:line !~ '# =>'
    if l:line == ''
      norm i# =>0
      redraw
    else
      call xmpfilter#mark('n')
    endif
  endif
  call xmpfilter#run('n', '-x')
endfunction


" OTHER MAPPINGS & COMMANDS {{{1

command! -bar Qa qa

command! -bar W w

map <C-f> :FZF<Enter>

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

" map "|" to vim-easy-align
xmap <Bar> <Plug>(EasyAlign)
nmap <Bar> <Plug>(EasyAlign)ii

" make "Y" behave like "D" and "C"
nmap Y y$

" select pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" vim-test mappings
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Insert markdown "=====" title underline
nmap ]= yypVr=
nmap [= yyPVr=
" Insert markdown "-----" title underline
nmap ]- yypVr-
nmap [- yyPVr-

" shortcut for ruby execution
command! -bar -nargs=* P execute 'ruby p('.<q-args>.')'

if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

" MACROS {{{1

let @p = 'orequire "pry"; binding.pry'
let @b = 'Irequire "benchmark"; puts Benchmark.realtime { A }'

let @f = 'vii<gv<gvoO```rbgvooi```'
let @q = 'gqip'

" ABBREVIATIONS {{{1

cabbrev f find
cabbrev F find

cabbrev E e

cabbrev Ag Ack
cabbrev ack Ack

cabbrev Qa qa
