set gcr=a:blinkon0
set tabstop=4
syntax on
filetype plugin indent on
set go-=T
set go-=m
set ruler
"set bg=dark
set gfn=Monaco:h12
" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc
colorscheme zenburn
set number
set cursorline
" automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert
:inoremap <CR> <Esc>
