" simple.vim
"
" Emphasizes comments and strings, and nothing else.
"

hi clear
let g:colors_name = "simple"

hi clear Normal

" Hides the post-buffer tildes.
" Disable with `let g:simple#hide_tildes = 0` before loading the colorscheme.

if !exists("g:simple#hide_tildes")
    let g:simple#hide_tildes = 1
end

if g:simple#hide_tildes
    if &background == "light"
        hi EndOfBuffer ctermfg=white
    else
        hi EndOfBuffer ctermfg=black
    end
end

hi clear Identifier
hi clear SpecialKey
hi clear Statement

hi clear Type
hi clear PreProc
hi clear Constant
hi clear Special

hi clear NonText
hi clear SignColumn

hi clear Comment
hi clear String
hi Comment cterm=bold gui=bold
hi String  cterm=bold gui=bold

hi clear Visual
hi Visual cterm=reverse gui=reverse

hi clear Pmenu
hi Pmenu cterm=reverse gui=reverse
