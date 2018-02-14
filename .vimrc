set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'mhinz/vim-grepper'
" languages: awk, bash, c/c++, LaTex, lua, perl, viml
" tools: git, make, cmake, doxygen
"Plugin 'WolfgangMehner/vim-plugins', {'name', 'dev-plugins'}
Plugin 'mhinz/vim-startify'
" Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'wavded/vim-stylus'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
"Plugin 'mattn/emmet-vim'  " HTML
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'junegunn/vim-easy-align'
" Plugin 'justinmk/vim-sneak'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'  " airline integrition
" Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'thaerkh/vim-indentguides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'davidhalter/jedi-vim'
"Plugin 'junegunn/goyo.vim'
"Plugin 'junegunn/limelight.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'luochen1990/rainbow'  " colorful brace
Plugin 'Chiel92/vim-autoformat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append  to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append  to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append  to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




set number
set showcmd
set showmode
set showmatch
set laststatus=2
set scrolloff=5
set incsearch
set hlsearch
set ignorecase
set smartcase
set cindent
set smartindent
" set foldmethod=indent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set cursorcolumn
set nowrap
colorscheme Monokai
set fileencodings=ucs-bom,utf-8,gb18030,shift-jis,default,latin1
set fileencoding=utf-8
" set bomb
" au FileType python setlocal fo=tcroqjmMw
" au FileType javascript,html,css,vim,yaml,markdown,stylus setlocal softtabstop=2 tabstop=2 shiftwidth=2 expandtab
" au FileType sh setlocal softtabstop=4 tabstop=4 shiftwidth=4 noexpandtab
" au FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4 expandtab
" au FileType markdown setlocal wrap
highlight Pmenu ctermfg=15 ctermbg=9 guifg=#ffffff guibg=#000000

" diable highlight
nnoremap <silent> <leader>nh :noh<CR>
" align
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" ycm
nmap <silent> <leader>gdec :YcmCompleter GoToDeclaration<CR>
nmap <silent> <leader>gdef :YcmCompleter GoToDefinition<CR>
nmap <silent> <leader>gdoc :YcmCompleter GetDoc<CR>
" cmake
nmap <silent> <leader>cmk :!cmake CMAKE_EXPORT_COMPILE_COMMANDS=ON .<CR>
nmap <silent> <leader>cmm :make<CR>


" airline
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 's'
let g:airline#extensions#ctrlp#show_adjacent_modes = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#windowswap#enabled = 1
let g:airline#extensions#ycm#enabled = 1

" ultisnips
let g:UltiSnipsSnippetDirectories  = ['UltiSnips', 'code-snippets']
let g:UltiSnipsExpandTrigger       = '<c-l>'
let g:UltiSnipsJumpForwardTrigger  = '<c-b>'
let g:UltiSnipsJumpBackwardTrigger = '<c-z>'

let g:ultisnips_python_style = 'google'

" YCM
" let g:ycm_keep_logfiles = 1
" let g:ycm_log_level = 'debug'
let g:ycm_error_symbol = '!>'
let g:ycm_warning_symbol = '>>'
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_confirm_extra_conf = 0
" let g:ycm_global_ycm_extra_conf = '~/.vim/ycm/cmake_with_fallback_cpp.py'


" ctrlp
let g:ctrlp_map = '<leader>f'
let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|out|so|dll)$',
            \ }
let g:ctrlp_lazy_update = 1
let g:ctrlp_working_path_mode = 'ra'
