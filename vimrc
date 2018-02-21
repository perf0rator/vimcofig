set nocompatible              " be iMproved, required
filetype off                  " required
"=====================================================
"" Vundle settings

"=====================================================
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'      " let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
"Plugin 'scrooloose/nerdtree'            " Project and file navigation
"Plugin 'majutsushi/tagbar'              " Class/module browser
"
""------------------=== Other ===----------------------
Plugin 'bling/vim-airline'              " Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
Plugin 'rosenfeld/conque-term'          " Consoles as buffers
Plugin 'tpope/vim-surround'     " Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'        " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'   " dependencies #1
Plugin 'tomtom/tlib_vim'        " dependencies #2
Plugin 'honza/vim-snippets'     " snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'           " Python mode (docs, refactor, lints,highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim'       " Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'        " Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

" --- GoLang ---
Plugin 'fatih/vim-go'
call vundle#end()                   " required
filetype on
filetype plugin on
filetype plugin indent on



set tabstop=4
set shiftwidth=4
set smarttab
set et
set wrap
set ai

"colorscheme badwolf

" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" Make the tab line darker than the background.
let g:badwolf_tabline = 0

" Make the tab line the same color as the background.
let g:badwolf_tabline = 1

" Make the tab line lighter than the background.
let g:badwolf_tabline = 2

" Make the tab line much lighter than the background.
let g:badwolf_tabline = 3
" Turn off HTML link underlining
let g:badwolf_html_link_underline = 0
" Turn on CSS properties highlighting
let g:badwolf_css_props_highlight = 1

" Better command-line completion
set wildmenu

" Search highlitning
set hlsearch

set guifont=Courier\14
set t_Co=256
set background=dark
colorscheme badwolf
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

set showmatch
set incsearch
set ignorecase

" Quick split
" nnoremap <silent> vv <C-w>v<C-w>l
" nnoremap <silent> ss <C-w>s<C-w>j
nnoremap <silent> <C-\> :NERDTreeFind<CR>

map <silent> <F8>   :Explore<CR>
map <silent> <S-F8> :sp +Explore<CR>

set listchars=tab:··
set list

set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
"" Python-mode settings
"=====================================================
"" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
" let g:pymode_doc = 0
" let g:pymode_doc_key = 'K'
" " проверка кода
" let g:pymode_lint = 1
" let g:pymode_lint_checker = "pyflakes,pep8"
" let g:pymode_lint_ignore="E501,W601,C0110"
" " провека кода после сохранения
" let g:pymode_lint_write = 1
"
" " поддержка virtualenv
" let g:pymode_virtualenv = 1
"
" " установка breakpoints
" let g:pymode_breakpoint = 1
" let g:pymode_breakpoint_key = '<leader>b'
"
" " подстветка синтаксиса
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all
" let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" " отключить autofold по коду
" let g:pymode_folding = 0
"
" " возможность запускать код
" let g:pymode_run = 0

" Disable choose first function/method at autocomplete
" let g:jedi#popup_select_first = 0



"=====================================================
" Languages support
"=====================================================
"" --- Python ---
autocmd FileType python set completeopt-=preview " раскомментируйте, в
"случае, если не надо, чтобы jedi-vim показывал документацию по методу/классу
"autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
"\ formatoptions+=croq softtabstop=4 smartindent
"\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8

"cinwords=if,elif,else,for,while,try,except,finally,def,class,with
"
"" --- JavaScript ---
"let javascript_enable_domhtmlcss=1
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" --- HTML ---
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"
"  " --- template language support (SGML / XML too) ---
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal
"expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
autocmd BufNewFile,BufRead *.mako setlocal ft=mako
autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
let html_no_rendering=1
let g:closetag_default_xml=1
let g:sparkupNextMapping='<c-l>'
autocmd FileType html,htmldjango,htmljinja,eruby,mako let
"b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source
"  ~/.vim/scripts/closetag.vim
"
"  " --- CSS ---
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4
"softtabstop=4

