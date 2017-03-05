"=============================================================================
" File: vimtask2.vim
" Author: noahorberg
" Created: 2017-03-05
"=============================================================================

scriptencoding utf-8

if !exists('g:loaded_vimtask2')
    finish
endif
let g:loaded_vimtask2 = 1

let s:save_cpo = &cpo
set cpo&vim

function! vimtask2#toggle(line)
  if a:line =~ '^.*\s*\[D\]'
    call setline('.', substitute(a:line, '\[D\]<.*>', '[ ]', ''))
  else
    call setline('.', substitute(a:line, '\[ \]', '[D]<'.strftime("%Y/%m/%d %H:%M").'>', ''))
  endif
endfunction

function! vimtask2#make(...)
  call append('.', a:1.' [ ] '.a:2)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
