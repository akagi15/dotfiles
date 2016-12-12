if has("syntax")
      syntax on
    endif
colorscheme darkblue
  set number
    set title
    set ambiwidth=double
    set mouse=a
    set tabstop=4
    set expandtab
    set shiftwidth=4
    set smartindent
    set list
    set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
    set nrformats-=octal
    set hidden
    set history=50
    set virtualedit=block
    set whichwrap=b,s,[,],<,>
    set backspace=indent,eol,start
    set wildmenu
    set showmatch

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
      exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
      endfor


let OSTYPE = system('uname')
if OSTYPE == "Linux\n"
        noremap y y:wv<CR>
        noremap p :rv!<CR>p
endif

set viminfo='50,\"3000,:0,n~/.viminfo


autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo

“dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/kaya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/kaya/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('Shougo/neocomplete')
call dein#add('eagletmt/neco-ghc')
call dein#add('eagletmt/ghcmod-vim')
call dein#add('dag/vim2hs')


" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

