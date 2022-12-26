set nocompatible
filetype plugin indent on
set runtimepath+=~/.vim

" ==================== General Setting ====================
syntax on           " Enable syntax highlighting
set history=1000    " Store lots of :cmdline history
set textwidth=100
set mouse=a         " Enable mouse in all modes
set laststatus=2    " Always show status line
set ruler           " Show the cursor position
set title           " Show the filename in the window titlebar

set showmatch       " Highlight matching braces
set showcmd         " Show the (partial) command as it's being typed
set showmode        " Show the current mode
set gcr=a:blinkon0  " Disable cursor blink

set autoread        " Reload files changed outside vim
set nostartofline   " Don't reset cursor to start of line when moving around
set colorcolumn=100 

set scrolloff=10    " Start scrolling when we're 10 lines away from margins

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight search
set ignorecase      " Ignore case
set smartcase       " Unless we type a capital
set backspace=indent,eol,start    " Enable backspace in insert mode

set noerrorbells    " Disable beep sound

" ==================== Indentation ====================
" By default, the indent is 4 spaces.
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set cindent
set smartindent
set smarttab
set expandtab
set copyindent
" set preserveindent

set cinoptions=g0   " For C++ class indentation

" ==================== Automatic Commands ====================
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif

    augroup configurations
        autocmd BufRead,BufNewFile *aliases set filetype=sh
        autocmd BufRead,BufNewFile *env set filetype=sh
        autocmd BufRead,BufNewFile *tmux* set filetype=sh
    augroup END
endif
