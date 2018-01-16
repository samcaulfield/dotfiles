execute pathogen#infect()

colorscheme industry

" Highlight trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Display tabs 8 characters wide
autocmd Filetype c setlocal tabstop=8

" Easier exit from insert mode
inoremap kj <ESC>

" Vertical red line at column 81
set cc=81

" Don't run searches into folded text
set fdo-=search

" Use space key to toggle folds
nnoremap <space> za

" Use syntax highlighting elements for folding
set foldmethod=syntax

" Disable automatic folding
set foldlevelstart=99

" Disable automatic indentation
set noautoindent

" Enable line numbers
set nu

" Enable syntax highlighting
syntax on

" Colour in the row and column of the cursor
set cursorcolumn
set cursorline

highlight CursorColumn cterm=bold ctermbg=none
highlight CursorLine cterm=bold ctermbg=none

" Change cursor row/column colour in insert mode
autocmd InsertEnter * highlight CursorLine cterm=bold ctermbg=DarkGray
autocmd InsertEnter * highlight CursorColumn cterm=bold ctermbg=DarkGray
autocmd InsertLeave * highlight CursorLine cterm=bold ctermbg=none
autocmd InsertLeave * highlight CursorColumn cterm=bold ctermbg=none

" Reduce the delay when exiting insert mode. Without this, there's a delay
" before the above InsertLeave triggers
set ttimeoutlen=30

