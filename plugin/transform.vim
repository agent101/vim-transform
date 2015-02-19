" GUARD:
if expand("%:p") ==# expand("<sfile>:p")
  unlet! g:loaded_transform
endif
if exists('g:loaded_transform')
  finish
endif
let g:loaded_transform = 1
let s:old_cpo = &cpo
set cpo&vim

" Main:

" AutoCmd:

" Command:
command! -range -bar -nargs=* Transform call transform#start(<line1>, <line2>, <q-args>)

" KeyMap:
nnoremap <Plug>(transform) :Transform n<CR>
xnoremap <Plug>(transform) :Transform v<CR>

" Finish:
let &cpo = s:old_cpo
" vim: foldmethod=marker