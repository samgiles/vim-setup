set nocp

fu! GstatusToggle()
        if join(filter(map(filter(range(0, bufnr('$')), 'bufwinnr(v:val)>=0'), 'bufname(v:val) == ".git/index"'), 'v:val>0')) == 1
                exe 'bd '. join(filter(map(copy(range(1, bufnr('$'))), 'bufname(v:val)'), 'v:val =~ "^.git/index$"'), ' ')
        else
                Gstatus
        endif
endfunction

command! -nargs=0 GstatusToggle call GstatusToggle()

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

if executable('ag')
        let g:ackprg = 'ag --nogroup --nocolor --column'
endif


" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

set nu
nmap <F4> :TagbarToggle<CR>
nmap <F5> :TagbarShowTag<CR>
nmap <F3> :GstatusToggle<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <C-0> :NERDTreeTabsToggle<CR>
nmap <F1> <Esc>

let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 2

set tabstop=8
set shiftwidth=8
set smarttab
set expandtab

set fileencoding=utf-8

set spelllang=en_gb
set spell

noremap <Space> <Return>
noremap ' :
noremap ; l
noremap l k
noremap k j
noremap j h

" Learn vi properly
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
noremap <up> <nop>
