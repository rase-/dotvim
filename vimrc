set expandtab
set shiftwidth=2
set tabstop=2

filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number
set cursorline
set title
set list
set listchars=tab:>-,trail:-,nbsp:%
set nohlsearch
set incsearch
set history=100

autocmd BufWritePre * :call <SID>StripWhite()
fun! <SID>StripWhite()
    %s/[ \t]\+$//ge
    %s!^\( \+\)\t!\=StrRepeat("\t", 1 + strlen(submatch(1)) / 8)!ge
endfun

inoremap <lt>/ </<C-X><C-O>

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

let g:tex_flavor='latex'
