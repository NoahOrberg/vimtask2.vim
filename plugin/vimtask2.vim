"=============================================================================
" File: vimtask2.vim
" Author: noahorberg
" Created: 2017-03-05
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_vimtask2')
    finish
endif
let g:loaded_vimtask2 = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 MyTaskToggle call vimtask#toggle(getline("."))
command! -nargs=* MakeTODO call vimtask#make(<f-args>)
noremap td :MyTaskToggle<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
