#!/bin/sh

cp -r ~/.emacs.d ~/.emacs.d.bak
echo "backup of .emacs.d made"

cp -r  ~/bootstrap/emacs/.emacs.d ~/
