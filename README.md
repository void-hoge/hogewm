# hoge window manager
- hogewm is a simple X11 window manager written in Python3
- This wm is based on xpywm(https://github.com/h-ohsaki/xpywm.git )

## REQUIREMENTS
- requiered
  - Python 3.7 and above (for dict order)
  - python-xlib (https://pypi.org/project/python-xlib/ )
- optional (recommended)
  - rxvt-unicode (invoked by ctrl-alt-1)
  - emacs (invoked by ctrl-alt-2)
  - google-chrome (invoked by ctrl-alt-3)
  - Roboto Mono Medium for Powerline (using in .Xdefualts)
  - imagemagick (for screenshot)
  - hogemonitor (https://github.com/void-hoge/hogemonitor.git )

## INSTALLATION
```
$ sudo apt install xbase-clients rxvt-unicode imagemagick emacs
$ sudo apt install /google/chrome/installer.deb
$ cd
$ git clone https://github.com/powerline/fonts.git
$ cd fonts
$ ./install.sh
$ cd
$ git clone https://github.com/void-hoge/hogewm.git
$ cp hogewm/home/.* $HOME
```
- `startx` to start.

## KEY BIND
You can configure keybinds and their actions by modifying `KEY_BINDS` in [hogewm](./hogewm).

| key bind | description |
|--|--|
| M-leftdrag | move window |
| M-rightdrag | resize window |
| C-M-i | select window |
| C-M-r | select the window the cursor is in|
| C-M-m | maximize the selected window |
| C-M-f | move the selected window to the next monitor |
| C-M-s | swap all windows between monitors |
| C-M-(h,l,j,k) | halve the selected window |
| C-M-comma | vartically maximize the selected window |
| C-M-1 | open terminal emurator |
| C-M-2 | open text editor |
| C-M-3 | open web browser |
| C-M-v | oepn system monitor (hogemonitor) |
| Print | capture the entire screen and save it into `$HOME/screenshots/` |
| C-Print | capture the selected window and save it into `$HOME/screenshots/` |
| M-(F1,F2,F3,F4) | go to the virtual screen (1,2,3,4) |
| C-M-(a,d) | move the selected window to the next virtual screen  |
| C-M-t | tile windows |
| C-M-delete | restart the window manager |
| C-M-home | reconfigure external outputs |
| C-M-end | reload external output configurations from xrandr |
| C-M-backspace | set the selected window to always be on top |

## LICENSE
- GPLv3

## AUTHOR
- Mugi Noda (void-hoge)
