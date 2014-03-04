set nocp

fu! GstatusToggle()
        if join(filter(map(filter(range(0, bufnr('$')), 'bufwinnr(v:val)>=0'), 'bufname(v:val) == ".git/index"'), 'v:val>0')) == 1
                exe 'bd '. join(filter(map(copy(range(1, bufnr('$'))), 'bufname(v:val)'), 'v:val =~ "^.git/index$"'), ' ')
        else
                Gstatus
        endif
endfunction

if filereadable(".vim.custom")
    so .vim.custom
endif

fu! ClearRegister(register)
	exe 'let @'.register.' = ""'
endfunction

command! -nargs=1 Clrr call ClearRegister(<f-args>)
command! -nargs=0 GstatusToggle call GstatusToggle()

let g:loaded_syntastic_php_phpcs_checker=1
let g:loaded_syntastic_php_phpmd_checker=1
execute pathogen#infect()
syntax enable

" Change to light to change to solarized light
"set background=light
"colorscheme solarized

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

let g:airline#extensions#tabline#enabled=1

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
nmap ! :!

let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 2

" tab spacing
" Devving libsass
" set noexpandtab 	" use tabs, not spaces
set noexpandtab
set tabstop=4   	" tabstops of 8
set shiftwidth=4	" indents of 8
set textwidth=78  " screen in 80 columns wide, wrap at 78
set autoindent smartindent              " turn on auto/smart indenting
set smarttab                            " make <tab> and <backspace> smarter
set backspace=eol,start,indent          " allow backspacing over indent, eol, & start

set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

set fileencoding=utf-8

set spelllang=en_gb
set spell

noremap <Space> <Return>
noremap ' :
noremap ; l
noremap l k
noremap k j
noremap j h

noremap <C-w> <C-w><C-w>


" Learn vi properly
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
noremap <up> <nop>

noremap <F9> :tabnext<CR>
noremap <F8> :tabprevious<CR>
noremap <F7> :tabnew<CR>

noremap <C-j> :tabprevious<CR>
noremap <C-k> :tabprevious<CR>
noremap <C-n> :tabnew<CR>

inoremap <F1> <nop>
nnoremap <F1> <nop>
vnoremap <F1> <nop>

set nofoldenable
