set nocompatible	" Use Vim settings, rather than Vi settings
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Correctly handle python autoindent
Plugin 'vim-scripts/indentpython.vim'
" Autocompletion engine
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=" "

" Set split to open down and right by default
set splitbelow
set splitright

"---- Mappings ----

" Map the escape to jk (insert mode)
imap jk <Esc>

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
set tabstop=4
"spaces for indents
set shiftwidth=4
set expandtab
set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" set ruler to column 89 as a maker for the 88 characters max that black enforces
au BufRead,BufNewFile *.py,*.pyw, set colorcolumn=89


" Config autocompletion YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Enable syntax highlighting
let python_highlight_all=1
syntax on

" File management with netrw
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

set encoding=utf-8
set number		" Enable line numbers
set relativenumber	" Show number in current line and relative to that in the rest.
set nobackup		" Disable backup files (I backup every night to the other disk)

" Keep my working directory clean by saving backups, swaps and undo files in
" other location.
set backupdir=.backup/,$HOME/.vim/.backup//,/tmp//
set directory=.swp/,$HOME/.vim/swp//,/tmp//
set undodir=.undo/,$HOME/.vim/undodir//,/tmp//
