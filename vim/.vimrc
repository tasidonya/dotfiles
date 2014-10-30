" Enable line numbers
set number

" Set tabwidth to 3 and turn to spaces
set tabstop=3 shiftwidth=3 expandtab

" Colour scheme: jellybeans
colors jellybeans

" But make the bg transparent
hi Normal ctermbg=NONE

" Set the visual ruler at 80 chars and set its colour
set colorcolumn=80
highlight ColorColumn ctermbg=DarkGray

" Force Vim to use 256 colours
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
let g:rehash256 = 1

" In git files control the width of the lines in commit messages
:filetype plugin on
autocmd Filetype gitcommit setlocal spell textwidth=72
noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp

