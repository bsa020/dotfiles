" Auto-reload .vimrc on save
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
  augroup END
endif " has autocmd

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'neovimhaskell/haskell-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'dkasak/gruvbox'
Plug 'takac/vim-hardtime'
Plug 'junegunn/goyo.vim'
Plug 'w0rp/ale'
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Plugin setup
let g:hardtime_default_on = 1

" Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" Python
au BufRead,BufNewFile *.py setlocal textwidth=100
let g:loaded_python_provider = 1
let g:python3_host_prog = '/usr/bin/python3'

" Design
colo gruvbox
set splitbelow
set splitright
set nu relativenumber
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
map ; :Files<CR>

" Whitespace
set wrap linebreak
set textwidth=79
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3

" Remaps
let mapleader=" "
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>c :close<cr>
nnoremap <leader>ve :e $MYVIMRC<cr>
nnoremap <leader>vr :w<cr>:source $MYVIMRC<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader><Tab> :bn<cr>
nnoremap <leader>x :bd<cr>
nnoremap <leader>pi :w<cr>:PlugInstall<cr>
nnoremap <leader>pc :w<cr>:PlugClean<cr>
nnoremap <leader>pu :w<cr>:PlugClean<cr>
command! PU PlugUpdate | PlugUpgrade
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <right> <nop>

" Search 
set nohlsearch
set ignorecase
set smartcase
"set showmatch 

" Misc
set clipboard=unnamedplus
set lazyredraw 
set magic
set hidden
set mouse=a

" Disabled
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:deoplete#enable_at_startup = 1
" let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper'] }
" Plug 'kien/ctrlp.vim'
" Plug 'scrooloose/syntastic'
" Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:ctrlp_map = '<c-p>'
"set foldcolumn=1
" let g:ctrlp_cmd = 'CtrlP'
