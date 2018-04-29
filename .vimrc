""""""""""""""""""""""""""""""
" Maintainer:
"	Aman Mehta
" Last Updated:
" 	29/04/2018
"
" Sections:
"  -> General
"  -> Vim User Interface
"  -> Colours and Fonts
"  -> Plugins
"
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""
" Enable pathogen
execute pathogen#infect()

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" Choose terminal
set term=builtin_ansi

" Generate tags for current directory on the fly
command! MakeTags !ctags -R .

""""""""""""""""""""""""""""""
" => VIm user interface
""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned, buffers can
" still be accessed through :ls and "b[N]
set hid

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Always show the status bar
set laststatus=2

""""""""""""""""""""""""""""""
" => Colours and fonts
""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif
     
" Select colour theme
" set background=dark
" colorscheme solarized

" enable line number background
highlight LineNr ctermbg=darkgrey



""""""""""""""""""""""""""""""
" => Text, tab and indents
""""""""""""""""""""""""""""""
" Show line numbers (hybrid)
set number relativenumber

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize = 35
map <leader>nt :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

