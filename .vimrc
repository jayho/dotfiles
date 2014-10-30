" Jens Hoffmann
" based on http://dougblack.io/words/a-good-vimrc.html
"
" Things to install:
" - colorschemes
" - pathogen
" - powerline
" - gundo
" - ag (silver searcher)
" - ctrlp
"
" Section Colors {{{
colorscheme default     " awesome colorscheme
syntax enable           " enable syntax processing
" }}}
" Section Misc {{{ 
set nocompatible        " necessary for lots of cool vim things
" jh is escape
"inoremap jh <esc>
" }}}
" Section Spaces & Tabs {{{
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in TAB when editing
set expandtab           " tabs are spaces
set backspace=indent,eol,start " allow backspace in insert mode
" }}}
" Section UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set title               " show the filename in the window titlebar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ " show invisible characters
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
" Section Line Shortcuts {{{
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
" }}}
" Section Leader Shortcuts {{{
" turn off search highlight
let mapleader=","       " leader is comma
nnoremap <leader><space> :nohlsearch<CR>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" save session
nnoremap <leader>s :mksession<CR>
" }}}
" Section Powerline {{{
" }}}
" Section CtrlP {{{
" }}}
" Section NERDTree {{{
" }}}
" Section Syntastic {{{
" }}}
" Section Launch Config {{{
" }}}
" Section AutoGroups {{{
" }}}
" Section Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Section CustomFunctinons {{{
" toggle between number and relativenumber
function! ToggleNumber()
        if(&relativenumber == 1)
                set norelativenumber
                set number
        else
                set relativenumber
        endif
endfunc
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
        " save last search & cursor position
        let _s=@/
        let l = line(".")
        let c = col(".")
        %s/\s\+$//e
        let @/=_s
        call cursor(l, c)
endfunction
" }}}
set modelines=1
" vim:foldmethod=marker:foldlevel=0
