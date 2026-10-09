#!/bin/bash

# this script creates symbolic links to their respective correct locations
# it will create a backup of the destinations before overwriting them (file~#~)
# this will effectively replace any existing config files with the git ones

# warnings:
# please make sure $HOME is set first
# it is not recommended to run this script more than once, please check
# existing backup files first to not fill your directories with files

cp -rsf --backup=t $HOME/dotfiles/.local/ $HOME/

sleep 0.05s # just in case lol

cp -rsf --backup=t $HOME/dotfiles/.config/ $HOME/



