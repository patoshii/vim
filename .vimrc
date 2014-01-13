syntax on                                                                                                                                                              
filetype plugin on
set hlsearch
set autoindent
set titleset ignorecase
set scrolloff=4
set number
set autochdir
set tags=tags;
set showcmd
set incsearch
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
     
set expandtab
set tabstop=2
set shiftwidth=2
     
au BufNewFile,BufRead *.tpl setfiletype php
inoremap kj <Esc>
colorscheme molokai
     
"file types assignment
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.test set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.inc set filetype=php
     
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType inc set omnifunc=phpcomplete#CompletePHP
     
" Make the mouse work in VIM
set mouse=a
     
" Shift-h or l to navigate tabs
:map <S-h> gT
:map <S-l> gt
     
" Nerd Tree file explorer Toggle
map <F2> :NERDTreeToggle<CR>
     
" Most Recently Used Files F12 Key
map <F12> :MRU<CR>
     
" : YRShow - Yank Ring Popup Clipboard toggle
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
