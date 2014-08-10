filetype plugin indent on
syntax on

set ttyfast

set encoding=utf-8
" Кодировка по-умолчанию
set termencoding=utf-8
" Список кодировок файлов для автоопределения
set fileencodings=utf-8,cp1251,koi8-r,cp866
" Список форматов файлов
set fileformats=unix,dos,mac

" Reload files changed outside vim

set autoread

set backspace=indent,eol,start
set history=1000
set undolevels=1000

" Indentation
set autoindent
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Выключаем перенос строк
" set nowrap
" set nolinebreak

" Jump N lines when running out of the screen
set scrolljump=7
set scrolloff=10
set sidescrolloff=10
set sidescroll=1

set cursorline
set number
set numberwidth=3
set ruler
set nolazyredraw

" Right split directions
set splitright
set splitbelow

" Hide buffers when not displayed
set hidden

" Show incomplete cmds down the bottom
set showcmd

" Show current mode down the bottom
set showmode

" Включить подсветку невидимых символов
set list
set listchars=tab:·\ ,trail:·,extends:»,precedes:«

" Show ↪ at the beginning of wrapped lines
if has("linebreak")
    let &sbr = nr2char(8618).' '
endif

set textwidth=0
if version >= 703
    " mark the ideal max text width
    set colorcolumn=+1
end

" mouse support
if has('mouse')
    set mouse=a
    set mousehide
    if exists('$TMUX')
        set ttymouse=xterm2
    endif
endif


 if has ('gui')          " On mac and Windows, use * register for copy-paste
     set clipboard=unnamed
 endif


" Status line ==================================================================

" Включаем отображение дополнительной информации в статусной строке
set laststatus=2
set statusline=%f%h\ %y\ %m\ %r\ %{&encoding}\

set statusline+=%=Line:%l/%L[%p%%]\ Col:%c\ [%b][0x%B]
set statusline+=\ Buf:%n\
set noshowmode

" Search settings =============================================================

set incsearch
set hlsearch
" Останавливать поиск при достижении конца файла
set nowrapscan
set ignorecase
set gdefault

" Backups ======================================================================

set nobackup
set noswapfile
set nowb

" Folds ========================================================================

set foldmethod=indent
" dont fold by default
set nofoldenable

" Completion ===================================================================

" Make cmdline tab completion similar to bash
" enable <ctrl-n> and <ctrl-p> to scroll thru matches
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*.obj,*~,*.pyc,*.pyo,*.bak
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif

" Diff settings ================================================================

" Add ignorance of whitespace to diff
set diffopt=filler,iwhite,vertical,context:15
let g:html_diff_one_file = 1


" Jump to lasr cursor position unless it's invalid or in event handler
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Highlight cursor line in current window
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set t_Co=256
"set relativenumber

set background=dark
colorscheme lucius

" Turn off any bells
set novisualbell
set t_vb=
set gcr=a:blinkon0


" Support for yankring
set viminfo+=!
set timeout timeoutlen=1000 ttimeoutlen=50
set laststatus=2

set matchpairs+=<:>

