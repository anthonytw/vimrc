" Notes:
" ,trim -> delete trailing whitespace

set number
set nocindent
set nosmartindent
set nofoldenable
set foldmethod=syntax
set foldlevelstart=1000

let javaScript_fold=0

silent! nmap <F3> :NERDTreeToggle<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++14'

let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler = 'clang'

let g:syntastic_cuda_check_header = 1

let g:syntastic_java_javac_config_file_enabled = 1

autocmd FileType java set tags=tags

" Copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

nnoremap <leader>nf :set nofoldenable<cr>

nnoremap <leader>ev :vsplit ~/.vim_runtime/my_configs.vim<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>erc :vsplit ~/.bashrc_awertz<cr>

nnoremap <leader>sd :SyntasticToggleMode<cr>
nnoremap <leader>cs :SyntasticCheck<cr>

nnoremap <leader>wtf gg<c-v>G=

" Navigating errors
nnoremap <leader>n :lne<cr>
nnoremap <leader>p :lpr<cr>

au BufNewFile,BufRead *.thrift set filetype=thrift
