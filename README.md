# simple.md

A barebones (Neo)Vim color scheme that emphasizes strings and comments.

<img src="img/dark.png">
<img src="img/light.png">

# Installation

Lots of ways you can do this, I expect;
<a href="https://github.com/junegunn/vim-plug">vim-plug</a>
is probably my favorite of the lot:

    Plug 'dragonsourced/simple.vim'

If you don't want to bother, you can just drop `colors/simple.vim` into
`~/.nvim/colors`, or `~/.vim/colors`, or wherever you keep your colorschemes.

# Configuration

There's really only one option, that being `g;simple#hide_tildes` which does
exactly what you think it does.

It's on by default, but can be very easily disabled:

    let g:simple#hide_tildes = 0
