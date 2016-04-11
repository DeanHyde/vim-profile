set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

colorscheme atom-dark




syntax enable
let mapleader = ','
set number

"------ Visuals -----"

set t_CO=256

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"------ Split Management -----"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J> 
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"------ Search -----"
set hlsearch
set incsearch

"------ Mappings -----"

"Make editing .vimrc file easy
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle"
nmap <Leader>sb :NERDTreeToggle<cr>

"------ Auto-Commands -----"

"Automaticcaly source .vimrc on save

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
