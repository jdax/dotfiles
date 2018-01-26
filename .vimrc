
set background=dark
colorscheme fairyfloss

" Make tabs 2 spaces
set smartindent
inoremap # X^H#
set softtabstop=2
set shiftwidth=2
set expandtab

set runtimepath^=~/.vim/bundle/nerdtree

" Treat .md like .markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Add support for typescript
set runtimepath^=~/.vim/bundle/typescript-vim
au BufRead,BufNewFile *.ts set filetype=typescript

" makes it so i can type `vim` instead of `vim .` to open the dir i am in in nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if vim tree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Quicker window movement - remaps ctrl + w + j to ctrl + j to switch between vim splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
