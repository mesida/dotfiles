set fenc=utf-8
set nobackup
set noswapfile

"tab type
set list
set listchars=tab:^\ ,trail:~
set history=10000
hi Comment ctermfg=3
set expandtab
set tabstop=2
set shiftwidth=2

set number
set cursorline
syntax enable
set hlsearch
set incsearch
set smartindent
set clipboard+=unnamed,autoselect
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
set laststatus=2
set wildmenu

set showcmd

"auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
 augroup END

" HTML/XML close tag
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

"limit yazirushi
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

"if has('persistent_undo')
" let undo_path = expand('~/.vim/undo/')
" exe 'set undodir=' undo_path
" set undofile
"endif



"dein Scripts-----------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
"set runtimepath+=/Users/imasahir/.vim/dein/.//repos/github.com/Shougo/dein.vim
"
"" Required:
"call dein#begin('/Users/imasahir/.vim/dein/./')
"
"" Let dein manage dein
"" Required:
"call dein#add('/Users/imasahir/.vim/dein/.//repos/github.com/Shougo/dein.vim')
"
"" Add or remove your plugins here like this:
""call dein#add('Shougo/neosnippet.vim')
""call dein#add('Shougo/neosnippet-snippets')
"
"" Required:
"call dein#end()
"
"" Required:
"filetype plugin indent on
"syntax enable
"
"" If you want to install not installed plugins on startup.
""if dein#check_install()
""  call dein#install()
""endif
"
"call dein#add('Shougo/deoplete.nvim')
"if !has('nvim')
"  call dein#add('roxma/nvim-yarp')
"  call dein#add('roxma/vim-hug-neovim-rpc')
"endif
"let g:deoplete#enable_at_startup = 1
""End dein Scripts-------------------------



