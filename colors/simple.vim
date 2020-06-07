" simple.vim
"
" Emphasizes comments and strings, and nothing else.
"

hi clear
let g:colors_name = "simple"

let s:has_gui = $WINDOWID != ""

hi clear Normal

" Hides the post-buffer tildes.
" Disable with `let g:simple#hide_tildes = 0` before loading the colorscheme.

if !exists("g:simple#hide_tildes")
    let g:simple#hide_tildes = 1
end

if g:simple#hide_tildes
    if &bg == "dark"
        hi EndOfBuffer ctermfg=black
    else
        hi EndOfBuffer ctermfg=white
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

hi clear Title

" The Linux console doesn't have italics support, but it does have underline.

if !s:has_gui
    hi htmlItalic     cterm=underline
    hi htmlBoldItalic cterm=bold,underline
end

hi LineNr cterm=bold ctermfg=black
hi clear StatusLine
hi StatusLine cterm=bold

hi clear TabLine
hi clear TabLineFill

hi clear FoldColumn
