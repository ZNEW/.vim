
map ,fs :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) - 1)', '')<CR>
map ,fu :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) + 1)', '')<CR>

