# hoge window manager
- hogewm is a simple X11 window manager written in Python3
- This wm is based on xpywm(https://github.com/h-ohsaki/xpywm.git )

## REQUIREMENTS
- requiered
  - python-xlib (https://pypi.org/project/python-xlib/ )
- optional (recommended)
  - rxvt-unicode
  - emacs
  - google-chrome
  - Roboto Mono Medium for Powerline
  - imagemagick
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

## KEY_BINDS
- Alt-Button1

  Move the pointed window while dragging.

- Alt-Button3

  Resize the pointed window while dragging.

- Ctrl-Alt-i

  Select next window. If it is within a certain period of time (WINDOW_SELECTION_INTERVAL) from the previous window selection, it will be selected normally. If not, the most recently used window will be selected.

- Ctrl-Alt-r

  Focus(raise and draw frame) pointed window.

- Ctrl-Alt-m

  Maximize the framed window.

- Ctrl-Alt-n

  Move the framed window to next monitor.

- Ctrl-Alt-s

  Swap all windows between monitors.

- Ctrl-Alt-h

  Halve the framed window left-justified.

- Ctrl-Alt-l

  Halve the framed window right-justified.

- Ctrl-Alt-j

  Halve the framed window lower-justified.

- Ctrl-Alt-k

  Halve the framed window upper-justified.

- Ctrl-Alt-1

  Execute a command 'urxvt &'.

- Ctrl-Alt-2

  Execute a command 'emacs &'.

- Ctrl-Alt-3

  Execute a command 'google-chrome &'

- Print

  Capture the root screen and save it in $HOME/screenshots/

- Ctrl-Print

  Capture the framed window and save it in $HOME/screenshots/

- Alt-F1~4

  Select virtual 1~4 virtual screen.

- Ctrl-Alt-d

  Send framed window to forward virtual screen.

- Ctrl-Alt-a

  Send framed window to backward virtual screen.

- Ctrl-Alt-t

  Tile all windows on a monitor that has a framed window.

- Ctrl-Alt-v

  Toggle hogemonitor.

## LICENSE
- GPLv3

## AUTHER
- void-hoge