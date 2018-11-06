nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TlistToggle<CR>

let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
\ 'file': '\v\.(exe|so|dll)$'
\ }
let g:solarized_termcolors=256
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let NERDTreeWinPos = "left"

set smartindent
set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
set encoding=utf-8

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'

Plugin 'AutoComplPop'
Plugin 'taglist-plus'

call vundle#end()
filetype plugin indent on

" PluginInstall
" source %
" cd ~/.vim/bundle/YouCompleteMe/ 
" git submodule update --init --recursive
" sudo ./install.py
