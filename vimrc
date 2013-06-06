set nocp
let g:loaded_syntastic_php_phpcs_checker=1
let g:loaded_syntastic_php_phpmd_checker=1
execute pathogen#infect()
syntax enable

" Change to light to change to solarized light
set background=dark
colorscheme solarized

filetype plugin indent on

" Remove whitespace on save from end of files
autocmd BufWritePre * :%s/\s\+$//e
set completeopt+=preview

" Code sniffer stuff.
" Standard for work...
let g:phpqa_codesniffer_args = "--standard=Assanka"
let g:phpqa_messdetector_ruleset = "~/bin/phpmd-src/phpmd.xml"

" Disable markdown folding
let g:vim_markdown_folding_disabled=1


" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

set nu
nmap <F4> :TagbarToggle<CR>
nmap <F5> :TagbarShowTag<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <C-0> :NERDTreeTabsToggle<CR>
nmap <F1> <Esc>
nnoremap ; :

set spelllang=en_gb
set spell

" Learn vi properly
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
