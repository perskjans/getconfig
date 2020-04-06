#!/bin/sh
#
# This scripts only purpose is to fetch my .cfg bare repo from github
# and set config for it and do a checkout
#


git clone --bare https://github.com/perskjans/.cfg.git $HOME/.cfg.git

args="--git-dir=$HOME/.cfg.git/ --work-tree=$HOME"

git $args checkout -f
git $args config --local status.showUntrackedFiles no


