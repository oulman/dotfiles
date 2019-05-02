" based on https://github.com/alienth/dotfiles/blob/master/.vimrc

set nocompatible  " Clean out any compat. Necessary? FIXME

set smartindent   " try to auto-add indents where they make sense
set autoindent    " copy indent from current line when starting new line
set smarttab      " shiftwidth blanks at line start, softtabstop elsewhere
set expandtab     " use blanks instead of literal <Tab>s
set softtabstop=4 " number of spaces a soft-<Tab> inserts when editing
set shiftwidth=4  " number of spaces to use for each autoindent
set shiftround    " Round indent to multiple of shiftwidth.
set tabstop=8     " literal tabs are 8 spaces

set backspace=2   " Backspace over everything (indents, EOL, start of line) in insert mode
set nowrap        " Line wrapping off
set nu            " Line numbers on
set ruler         " Ruler on (line number info in lower right)

set wildmenu
set wildmode=list:longest,full

" Backups & Files
set backup                    " Enable creation of backup files.
set backupdir=~/.vim/backup/  " Where backups will go.
set directory=~/.vim/tmp      " Where temporary files will go.
if exists('+undofile')
  set undofile                  " Use a persistent undofile
  set undodir=~/.vim/undo/
endif

" Visual stuff
set showmatch  " When a bracket is inserted, jump to the matching bracket.
set mat=5      " How long to jump to the matching bracket in tenths of a second.
"set list       " Enable 'list mode', which visually displays certain characters
               " upon listchars rules.
"set listchars=tab:\ \ ,eol:Ꞁ,trail:~,extends:>,precedes:<
set novisualbell  " No blinking the screen upon bells.
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set scrolloff=4   " Minimal number of screen lines to keep above and below cursor.
set breakindent   " When long lines are visually wrapped, maintain indentations.
set showbreak=\ + " Add a visual indicator of breakindent.
set linebreak     " Don't visually break in the middle of words.
set virtualedit=block   " Allow out-of-bounds cursor in visual block mode.

set foldmethod=indent
set foldlevelstart=20

set hlsearch   " hilight items found via search
set incsearch  " show matches when typing search cmd
set smartcase  " Case insensitive searches become sensitive with capitals.

set showcmd " display incomplete commands in laststatus.
            " For example, typing the start of a multi-key binding will
            " show each successive key typed in the lower right. Useful
            " for identifying when you're starting a command.

set hidden  " When you 'abandon' a buffer (i.e., when you no longer have a
            " buffer displayed), simply hide it rather than unloading it.
            " Without this, hiding a modified buffer would error due to that
            " buffer not being saved.

set lazyredraw " don't update screen when in the middle of executing macros

" How quickly swapfile is written after nothing being typed.
" Impacts git-gutter update times.
set updatetime=100

" Mappings
let mapleader = " "
let g:mapleader = " "

" Window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <C-n> :bnext<cr>
nmap <C-p> :bprev<cr>

set timeoutlen=500 " The time in milliseconds that is waited for a key code or
                   " mapped key sequence to complete.


"------------------------------------------------------------------------------
" python-mode
"------------------------------------------------------------------------------
let g:pymode = 0
let g:pymode_options = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_doc = 1

let g:pymode_lint = 0
let g:pymode_lint_checkers = ['pep8', 'pep257']
let g:pymode_trim_whitespaces = 0

let g:pymode_rope = 0
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_goto_definition_bind = 'gd'
let g:pymode_rope_goto_definition_cmd = 'e'

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
" Disable the vertical red bar at the 80th column.
let g:pymode_options_colorcolumn = 0
