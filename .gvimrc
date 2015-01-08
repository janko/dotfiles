set guifont=Menlo\ Regular:h11
set linespace=2
set antialias

" Don't beep
set visualbell

set guioptions-=T   " No toolbar
set guioptions-=m   " No menu bar
set guioptions-=rL  " No scrollbars

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert
end

let g:test#strategy = 'dispatch'
