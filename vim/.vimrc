set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Bundle 'L9'
Bundle 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'leafgarland/typescript-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()

filetype plugin indent on
syntax on

set smartindent
set tabstop=2
set shiftwidth=2
set et|retab

set list listchars=tab:»·,trail:·
set number
set numberwidth=5

syntax match Todo /\s\+$/

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" UNCOMMENT TO USE
"set tabstop=2                    " Global tab width.
"set shiftwidth=2                 " And again, related.
"set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e

colorscheme codeschool
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1

:let mapleader=","
" opens new buffer
nmap <leader>T :enew<cr>

" moves to the next buffer
nmap <leader>l :bnext<cr>

" moves to the previous buffer
nmap <Leader>h :bprevious<cr>

" close current buffer and move to previous one
" moves to the previous buffer
nmap <Leader>bq :bp <BAR> bd #<cr>

" show all open buffers and their status
nmap <Leader>bl :ls<cr>

map <Leader>v :vsplit<cr>
map <Leader>s :split<cr>
nnoremap <leader>a :Ag
map <Leader>e :Explore<cr>

let g:ackprg = 'ag --nogroup --nocolor --column'

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Get off my lawn
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" easy split navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Buffer transversal
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" comment to set current directory to working directory
noremap ,cd :cd %:p:h<CR>:pwd<CR>

" tags
map <Leader>c :!ctags -R -f ./.git/tags .<CR>

" On by default, turn it off for html
let g:syntastic_mode_map = { 'mode': 'active',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': ['html'] }

let g:syntastic_javascript_checkers = ['jshint']

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
nmap <Leader>bb :CtrlPBuffer<CR>
nmap <Leader>bm :CtrlPMixed<CR>
nmap <Leader>bs :CtrlPMRU<CR>


" Ultisnips config
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
