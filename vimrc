" Enable Pathogen
execute pathogen#infect()

" Color scheme settings
if !has("gui_running")
    let g:gruvbox_italic=0
endif
colorscheme gruvbox         " Set colorscheme
set background=dark

syntax enable               " enable syntax highlighting
set encoding=utf-8          " set GUI encoding to utf-8
set number                  " show line numbers
set showmatch               " highlight matching [{()}]
set cursorline              " highlight current line
if has("gui_running")
    set guifont=Menlo\ for\ PowerlineD:h11 " set GUI font
    set lines=40                           " initial window line count
    set columns=125                        " initial window column count
    set guioptions-=m                      " remove menu bar
    set guioptions-=T                      " remove toolbar
    set guioptions-=r                      " remove right-hand scroll bar
    set guioptions-=L                      " remove left-hand scroll bar
endif

set nowrap
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            " number of spaces using the indent operations (<< and >>)
set expandtab               " tabs are spaces
set autoindent              " automagically indent new lines

set incsearch               " search as characters are entered
set ignorecase              " ignore case when searching
set smartcase               " case-sensitive if search contains an uppercase char

set autochdir               " autocatically change CWD to current buffer's directory

" File-specific indentation
autocmd Filetype html setlocal ts=2 sts=2 sw=2

" Leader commands
let mapleader = "\<Space>"
" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
" copy/paste to system clipboard using <Leader>p and <Leader>y
nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

" xmllint
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" Airline plugin
set laststatus=2            " shows airline immediately
set noshowmode              " hide the default mode display
let g:airline#extensions#tabline#enabled = 1 " show tabs

" Airline plugin: Fancy symbols
" (Requires custom font to be installed; comment out otherwise)
let g:airline_powerline_fonts = 1

" CtrlP plugin
let g:ctrlp_max_files = 0 " Set no max file limit
let g:ctrlp_working_path_mode = 0 " Search from current directory instead of project root

" CtrlP plugin: Ignores
set wildignore+=*.exe,*.dll,*.msi
set wildignore+=*.log,*.swp,*.tmp
set wildignore+=*.bmp,*.jpg,*.png,*.gif
set wildignore+=*.doc,*.docx,*.ppt,*.pptx,*.xls,*.xlsx,*.pdf
