" vim:foldmethod=marker:foldlevel=0
"
" Jens Hoffmann
" based on http://dougblack.io/words/a-good-vimrc.html
"
" Plugin manager: pathogen
"
" Plugins       : badwolf (colorscheme)
"                 vim-airline
"                 vim-airline-themes
"                 vim-fugitive (git)
"                 [vim-colors-solarized]
"
" Good plugins  : gundo, NERDTree, ag (silver searcher), ctrlp, syntastic
"
" Section Launch Config {{{
"execute pathogen#infect()
set modelines=1
" }}}
" Section Colors {{{
colorscheme badwolf     " awesome colorscheme
"set background=dark
syntax enable           " enable syntax processing
" }}}
" Section Spaces & Tabs {{{
set expandtab           " tabs are spaces
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in TAB when editing
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set backspace=indent,eol,start " allow backspace in insert mode
filetype indent on      " load filetype-specific indent files
filetype plugin on      " load filetype-specific indent files
set autoindent          " copy indent from current line when starting a new line
" }}}
" Section UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set title               " show the filename in the window titlebar
set cursorline          " highlight current line
set textwidth=120       " maximum width of text (lines will be broken)
set colorcolumn=+1      " highlight column to indicate max width
set wildmenu            " visual autocomplete for command menu
set laststatus=2        " always display status line
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set lcs=tab:»\ ,trail:·,eol:¬,nbsp:_ " show invisible characters
set list                " show invisible characters
set mouse=a             " enable mouse in all modes
" }}}
" Section Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case of searches
" }}}
" Section Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" space open/closes folds
nnoremap <space> za
" }}}
" Section Navigation and Highlighting {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
"nnoremap B ^
"nnoremap E $
" $/^ doesn't do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" jk is escape
inoremap jk <esc>
" swap ; and : for convenience
nnoremap ; :
nnoremap : ;
" }}}
" Section Leader Shortcuts {{{
" turn off search highlight
let mapleader=","       " leader is comma
nnoremap <leader><space> :nohlsearch<CR>
" toggle gundo
"nnoremap <leader>u :GundoToggle<CR>
" toggle NERD tree
"nnoremap <leader>n :NERDTreeToggle<CR>
" toggle relative line numbers
nnoremap <leader>l :call ToggleNumber()<CR>
" save session
nnoremap <leader>s :mksession<CR>
" clipboard actions
" => yank to register '*' in normal and visual mode
" => paste from register '*' in normal mode
vnoremap <leader>y "*y
nnoremap <leader>y "*yy
nnoremap <leader>p "*p
" }}}
" Section Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Section Misc {{{
set nocompatible        " necessary for lots of cool vim things
set ttyfast             " faster redraw
" }}}
" Section CustomFunctions {{{
" toggle between number and relativenumber
function! ToggleNumber()
        if(&relativenumber == 1)
                set norelativenumber
                set number
        else
                set relativenumber
        endif
endfunction
" }}}
" Section Airline/Powerline {{{
let g:airline_powerline_fonts=1
" }}}
" Section CtrlP {{{
"let g:ctrlp_match_window = 'bottom,order:ttb' " order matching files top to bottom
"let g:ctrlp_switch_buffer = 0                 " always open files in new buffers
"let g:ctrlp_working_path_mode = 0             " let us change working dir during a vim session
" "}}}
" Section NERDTree {{{
" }}}
" Section Syntastic {{{
" }}}
" Section AutoGroups {{{
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.txt,*.java,*.md :%s/\s\+$//e
"    autocmd FileType java setlocal noexpandtab
"    autocmd FileType java setlocal list
"    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType php setlocal expandtab
"    autocmd FileType php setlocal list
"    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"    autocmd FileType ruby setlocal tabstop=2
"    autocmd FileType ruby setlocal shiftwidth=2
"    autocmd FileType ruby setlocal softtabstop=2
"    autocmd FileType ruby setlocal commentstring=#\ %s
"    autocmd FileType python setlocal commentstring=#\ %s
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
     autocmd BufRead,BufNewFile *.md set filetype=markdown
augroup END
" }}}
