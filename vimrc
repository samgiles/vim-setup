set nocp
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
