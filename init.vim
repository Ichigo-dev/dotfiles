syntax enable
set hlsearch
set incsearch
set wildmenu
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set smarttab
set laststatus=2
set backspace=2
set number 
set cursorline

let mapleader = "\<Space>"
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ; <ESC>A;<RIGHT>
inoremap <silent> jj <ESC>
map <Space><Space> o<ESC>
map H ^
map L $
map t gt
map T gT

" neovim terminal mapping
nnoremap @t :tabe<CR>:terminal<CR>
tnoremap <silent> jj  <C-\><C-n>
" slim 
autocmd BufRead,BufNewFile *.slim setfiletype slim

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
NeoBundle 'tomasr/molokai'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'suy/vim-ctrlp-commandline'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mattn/emmet-vim'
NeoBundle "slim-template/vim-slim"
NeoBundle "tpope/vim-endwise"
NeoBundle "airblade/vim-gitgutter"
NeoBundle "Shougo/deoplete.nvim"
NeoBundle "Shougo/neco-syntax"
NeoBundle "Shougo/deoplete-clangx"
NeoBundle "takkii/Bignyanco"
NeoBundle "w0rp/ale"
"----------------------------------------------------------
call neobundle#end()
filetype plugin indent on
NeoBundleCheck
"----------------------------------------------------------
" molokai
"----------------------------------------------------------
if neobundle#is_installed('molokai') 
    colorscheme molokai 
endif
set t_Co=256 

"----------------------------------------------------------
" CtrlP
"----------------------------------------------------------

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"----------------------------------------------------------
" CtrlP
"----------------------------------------------------------
let g:ctrlp_match_window = 'order:ttb,min:20,max:20,results:100' 
let g:ctrlp_show_hidden = 1 
let g:ctrlp_types = ['fil']
let g:ctrlp_extensions = ['funky', 'commandline'] 

command! CtrlPCommandLine call ctrlp#init(ctrlp#commandline#id())

let g:ctrlp_funky_matchtype = 'path' 
"----------------------------------------------------------
" ag.vim
"----------------------------------------------------------
if executable('ag') 
  let g:ctrlp_use_caching=0 
  let g:ctrlp_user_command='ag %s -i --hidden -g ""' 
endif
""----------------------------------------------------------
" NerdTree
"----------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif""
""----------------------------------------------------------
" tpope/vim-fugitive 
"----------------------------------------------------------
""map <C-g> :Gstatus<CR>
map <leader>gs :Gstatus<CR><C-w>T
map <leader>gl :Git log<CR><C-w>T
map <leader>a :Gwrite<CR>
map <leader>c :Gcommit<CR>
map <leader>ph :Gpush<CR>
map <leader>pl :Gpull<CR>
""----------------------------------------------------------
" mattn/emmet-vim
"----------------------------------------------------------
"let g:user_leader_key='<c-t>'

""----------------------------------------------------------
" deoplete.nvim 
"----------------------------------------------------------
let g:deoplete#enable_at_startup = 1
let g:nvim_typescript#vue_support = 1
""----------------------------------------------------------
" ale 
"----------------------------------------------------------
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'css': ['prettier'],
\   'ruby': ['rubocop'],
\}

let g:ale_ruby_rubocop_executable = 'bundle'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
