#!/bin/sh

cp -r ~/.mutt* ~/bootstrap/muttfiles
cd ~/bootstrap
git commit -am "$date automated from strap_down"
