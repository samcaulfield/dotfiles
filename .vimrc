colorscheme industry

" Highlight trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"-------------------------------------------------------------------------------
"
" Filetype-specific settings
"
"

"
" Bash
"

autocmd Filetype bash setlocal expandtab
autocmd Filetype bash setlocal shiftwidth=2
autocmd Filetype bash setlocal tabstop=2

"
" C
"
autocmd Filetype c setlocal tabstop=8

"
" C++
"
autocmd Filetype cpp setlocal tabstop=4
autocmd Filetype cpp setlocal shiftwidth=4

"
" HTML
"
autocmd Filetype html setlocal expandtab
autocmd Filetype html setlocal foldmethod=indent
autocmd Filetype html setlocal shiftwidth=2
autocmd Filetype html setlocal tabstop=2

"
" Git commits
"

" Add colourcolumns to indicate the conventional line length limits (50 for title, 72 for body).
autocmd FileType gitcommit setlocal tw=72
autocmd FileType gitcommit setlocal cc=+1
autocmd FileType gitcommit setlocal cc+=51

"
" JavaScript
"
autocmd Filetype javascript setlocal expandtab
autocmd Filetype javascript setlocal shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2

"
" JSON
"

autocmd FileType json setlocal shiftwidth=2
autocmd FileType json setlocal tabstop=2

"
" Python
"
autocmd Filetype py setlocal tabstop=4

"
" Rust
"
autocmd Filetype rust setlocal expandtab
autocmd Filetype rust setlocal tabstop=4
autocmd Filetype rust setlocal shiftwidth=4

"
" YAML
"
autocmd Filetype yaml setlocal expandtab
autocmd Filetype yaml setlocal tabstop=2
autocmd Filetype yaml setlocal shiftwidth=2

"
"
" End of filetype-specific settings
"
"-------------------------------------------------------------------------------

" Easier exit from insert mode
inoremap kj <ESC>

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

