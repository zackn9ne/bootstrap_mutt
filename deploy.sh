#!/bin/sh

echo "this will overwrite your mutt config do you want to proceed"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cp -r ~/bootstrap_mutt/muttfiles/.mutt* ~/; break;;
        No ) exit;;
    esac
done
