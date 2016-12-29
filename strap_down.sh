#!/bin/sh

cp -r ~/.mutt* ~/bootstrap_mutt/muttfiles
cd ~/bootstrap_mutt
git commit -am "$date automated from strap_down"
