set nocompatible               " be iMproved
filetype off                   " must be off before Vundle has run

if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
            !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    endif

    set runtimepath+=~/.vim/bundle/Vundle.vim


call vundle#begin()

" Colorschemes
Plugin 'flazz/vim-colorschemes'

" Git/mercurial/others diff icons on the side of the file lines
Plugin 'mhinz/vim-signify'

" Git integration
Plugin 'motemen/git-vim'

" Code completion
Plugin 'Valloric/YouCompleteMe'

" Indentation
Plugin 'vim-scripts/indentpython.vim'

" PEP8 checking
Plugin 'nvie/vim-flake8'

" status/tabline
Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdtree'

call vundle#end()

colorscheme Monokai

syntax enable " Enable syntax highlighting
filetype indent on

" Adjust tab spacing defaults
" -----------------------------------------------------------
set tabstop=4       " Number of spaces/tab char
set softtabstop=4   " Number of spaces in a tab when editing
autocmd FileType python setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4

" Searching
" -----------------------------------------------------------
set incsearch       " Search as characters are being entered
set hlsearch        " Highlight matches


nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
" -----------------------------------------------------------

" UI configuration stuff
" -----------------------------------------------------------
set number          " line numbers
set showcmd         " Show command line in the bottom bar
set cursorline      " highlight the current line
filetype indent on   " Load file specific indent files
set wildmenu        " A sort of autocomplete for the command menu, provides a list of possible matches ~ tab complete
set showmatch       " Shows the matching parens ~ brackets, etc.

" Folding
" -----------------------------------------------------------
set foldenable          " Enabled folding
set foldlevelstart=10   " Open most folds by default
set foldnestmax=10      " max is 10 nested folds
set foldmethod=indent   " fold based on indents

" Some basic auto complete
" -----------------------------------------------------------
set completeopt=longest,menuone

" Change the behavior of the enter key when the popup menu is opened
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Keep the menu open while you type
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" If we are opening a directory in Vim, open it using NERDTree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" If the only window left open in NERDTre, close it.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically fold all functions in python files
autocmd Syntax c,cpp,html,python normal zM

" Map CTRL-n to NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

