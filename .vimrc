execute pathogen#infect()

colorscheme industry

" Highlight trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Set the visual width of tabs, measured in character widths
autocmd Filetype c setlocal tabstop=8

autocmd Filetype html setlocal expandtab
autocmd Filetype html setlocal tabstop=2
autocmd Filetype html setlocal shiftwidth=2
autocmd Filetype py setlocal tabstop=4

" Easier exit from insert mode
inoremap kj <ESC>

" Vertical red line at column 81
set cc=81

" Don't run searches into folded text
set fdo-=search

" Add a kebinding to clear search highlights
nnoremap <F3> :noh<CR>

" Disable automatic insertion of additional lines of comments
set formatoptions-=cro

" Use space key to toggle folds
nnoremap <space> za

" Use syntax highlighting elements for folding
set foldmethod=syntax

" Use indentation for folding HTML
autocmd Filetype html setlocal foldmethod=indent

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

