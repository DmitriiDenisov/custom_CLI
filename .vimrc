"=== Vundle
" necessary for Vundle invokation / installation
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

set clipboard=unnamed

" for enabling backspace in vim
set backspace=indent,eol,start
set mouse=a " mouse
" ctrl+c for copy:
vnoremap <c-c> "+y
" ctrl+s for saving:
" nnoremap <c-s> :w<cr>

" swith between vim tabs with ctrl-left/right/up/down
nnoremap <C-Right> <C-W>l
nnoremap <C-Left> <C-W>h
nnoremap <C-Up> <C-W>k
nnoremap <C-Down> <C-W>j

" Switch to left tab, right tab or open new tab
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-b> :tabnew<CR>
" Open or close NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>

" for select all - ctrl+a
map <C-a> <esc>ggVG<CR>
" For shortcut ctrl+x for cut
:map <C-x> d
" For ctrl+z for undo
:map <C-z> u

" let Vundle manage Vundle, required
"set encoding=UTF-8

" Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tab'
Plugin 'preservim/nerdtree'
" Plugin 'ryanoasis/vim-devicons'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

if has('python3')
  silent! python3 1
endif

" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'ryanoasis/vim-devicons'


Plugin 'Valloric/YouCompleteMe'
" By this YouCompleteMe will see all installed libraries
let g:ycm_path_to_python_interpreter='python3'
" To disable Preview top window
set completeopt-=preview
" To select first suggestion: down + tab
let g:ycm_key_list_stop_completion = ['<Tab>']

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'

" check syntax errors for example in Python code
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']



Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'

" install UtilSnips plugin
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" install markdown highlighter
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0

" Plugin 'fisadev/vim-isort'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"===

syntax on

set expandtab " expand tab to spaces
set shiftwidth=4 " number of spaces to use for each step of (auto)indent.  Used for 'cindent', >>, <<, etc.
set softtabstop=4

set nu " print the line number in front of each line
set ic " ignore case in search patterns
set hlsearch " highlight search matches

" 256-color terminal
set t_Co=256
" colorscheme darkblue
colorscheme Benokai

"=== vim-isort configuration
" let g:vim_isort_map = '<C-i>'

"== Airline - always show
" see https://github.com/vim-airline/vim-airline/issues/20 for details
set laststatus=2

"== Syntatic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_aggregate_errors = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_python_flake8_args = "--max-line-length=120"

command! -nargs=0 -range SortWords call SortWords()
function! SortWords()
    normal! gvy
    call setreg('"', join(sort(split(getreg('"'), ", ")), ", "))
    " gv - reselect previously selected area
    normal! gv
    " "0p - paste from buffer
    normal! "0p
endfunction

command! -nargs=0 -range IPythonDebug call IPythonDebug()
function! IPythonDebug()
    normal! ofrom IPython import embed; embed()
endfunction
map <C-I> :call IPythonDebug()<CR>

command! -nargs=0 -range PDB call PDB()
function! PDB()
    normal! ofrom pdb import set_trace; set_trace()
endfunction
map <C-Y> :call PDB()<CR>

