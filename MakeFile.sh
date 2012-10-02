#!/bin/bash
cd .

CF_DIR=`pwd`

#bash
ln -sf $CF_DIR/aliases/bash_profile ~/.bash_profile

ALIASES_DIR="$CF_DIR/aliases"
ALIASES_FILES=`ls $ALIASES_DIR/*aliases`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    ln -sf $f ~/"."$F_NAME
done

ln -sf $ALIASES_DIR/dir_colors ~/.dir_colors

#vim config
ln -sf $CF_DIR/vim ~/.vim
if [ -L $CF_DIR/vim/vim ]
then 
    rm $CF_DIR/vim/vim
fi
ln -sf $CF_DIR/vim/vimrc ~/.vimrc

#svn
ln -sf $ALIASES_DIR/bash_svn_completion ~/.bash_svn_completion

#bin
ln -sf $CF_DIR/bin ~/bin

if [ ! -d ~/tmp ]
then
    mkdir ~/tmp
fi
