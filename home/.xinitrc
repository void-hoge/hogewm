#!/bin/sh

xset +fp $HOME/.local/share/fonts/
xrdb $HOME/.Xdefaults
xmodmap $HOME/.Xmodmap

xset r rate 200 40
setxkbmap -option ctrl:nocaps

$HOME/hogewm/hogewm 2> $HOME/hogewm/debug.log &
emacs &
urxvt -geometry 80x35-64-0 &
$HOME/hogewm/eternal_sleep
