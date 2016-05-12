syntax on                                                                                                              
filetype plugin on
set hlsearch
set autoindent
set title
set ignorecase
set scrolloff=4
set autochdir
set tags=./tags;
set swapfile
set undofile
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

 
set showcmd
set incsearch
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
highlight CursorColumn ctermbg=blue
 
set expandtab
set tabstop=2
set shiftwidth=2
 
set number
set ruler
 
" Instead of :%s/foo/bar/g you just type :%s/foo/bar/
set gdefault
 
au FocusLost * :wa
au BufNewFile,BufRead *.tpl setfiletype php
inoremap kj <Esc>
colorscheme molokai
 
" Leader mappings - example below means press leader key then type ev to
" excute following command.
let mapleader = ","
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
 
"code folding = video: http://vimeo.com/4020903
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
 
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
autocmd BufRead,BufNewFile *.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
 
" Make the mouse work in VIM
set mouse=a
 
" Shift-h or l to navigate tabs
:map <S-h> gT
:map <S-l> gt
 
" Most Recently Used Files F12 Key
map <F1> :MRU<CR>

" Nerd Tree file explorer Toggle
map <F2> :NERDTreeToggle<CR>
 
 
" : YRShow - Yank Ring Popup Clipboard toggle
nnoremap <silent> <F3> :YRShow<cr>
nnoremap <silent> <leader>, :YRShow<cr>
"inoremap <silent> <leader>, <ESC>:YRShow<cr>
 
" tag list toggle menu - used for browsing all vars and functions in a file
map <F4> :TlistToggle<CR>
 
" Gundo - Tree like view of your undo history - http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>
 
" greplace - The Global Replace plugin allows you to search and replace a pattern across multiple files interactively.
nnoremap <F6> :Gsearch
 
" buffer search list
nnoremap <leader>l :ls<CR>:b<space>
 
" quick commiting with git / svn using the <leader> key
nnoremap <leader>gl :!git pull; read -p '========================== PRESS ANY KEY ===> GIT PULL';<CR>
nnoremap <leader>gc :!git commit % -m 'updated '; git push;<C-left><C-left><C-left>
nnoremap <leader>gs :!git status; read -p '========================== PRESS ANY KEY ===> GIT STATUS';<CR>
nnoremap <leader>s :!svn commit % -m 'updated ';<C-left>
 
" jump to a function definition -  http://bgmerrell.blogspot.com/2008/02/first-of-all-let-me-introduce-ctags-and.html
nnoremap <F9> <C-w><C-]>
nnoremap <F10> <C-t>
 
" Drush Shortcuts
nnoremap <leader>dc :execute 'silent !drush cc all' | redraw!
 
" SASS stuff
nnoremap <leader>c :!compass compile ../../;<C-left>

" Most Recently Opened Files
nnoremap <leader>m :MRU<CR>

" Surround word in quotes: http://learnvimscriptthehardway.stevelosh.com/chapters/09.html
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Bring Up the Custom Help Menu with Shortcuts
nnoremap <leader>? :echo "Custom Duckx Vim - SHORTCUTS \n\n ============================ \n\n k j = ESC Alternative - Type k j While in Insert Mode to Exit Insert Mode \n\n  =====================  \n\n Leader Key = , \n\n , ev = Opens up .vimrc config file \n\n -------------------------------- \n\n , l = Search the Buffer List \n\n , gl = GIT Pull \n , gc = GIT Commit then GIT PUSH \n , gs = GIT Status \n\n\n , dc = Drush Cache Clear All \n\n\n , , = Most Recently Opened Files \n\n\n -------------------------- \n\n F2 = NERD Tree File Manager \n\n F5 = GUNDO - Tree like view of your UNDO history \n\n F6 = Global Search + Replace Across Multiple Files"<CR>


" Create Startup Message 
autocmd VimEnter * echo "Custom Duckx Vim - SHORTCUTS \n\n ============================ \n\n k j = ESC Alternative - Type k j While in Insert Mode to Exit Insert Mode \n\n  =====================  \n\n Leader Key = , \n\n , ev = Opens up .vimrc config file \n\n -------------------------------- \n\n , l = Search the Buffer List \n\n , gl = GIT Pull \n , gc = GIT Commit then GIT PUSH \n , gs = GIT Status \n\n\n , dc = Drush Cache Clear All \n\n\n , , = Most Recently Opened Files \n\n\n -------------------------- \n\n F2 = NERD Tree File Manager \n\n F5 = GUNDO - Tree like view of your UNDO history \n\n F6 = Global Search + Replace Across Multiple Files"
