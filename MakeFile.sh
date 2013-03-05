#!/bin/bash
cd .

CF_DIR=`pwd`

#.bash_profile
ln -sf $CF_DIR/aliases/bash_profile ~/.bash_profile


#alias
ALIASES_DIR="$CF_DIR/aliases"
ALIASES_FILES=`ls $ALIASES_DIR/*aliases`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    ln -sf $f ~/"."$F_NAME
done

#dir_colors
ln -sf $ALIASES_DIR/dir_colors ~/.dir_colors

#completion
COMPLETION_DIR="$CF_DIR/completions"
ALIASES_FILES=`ls $COMPLETION_DIR/*completion`
for f in $ALIASES_FILES
do
    F_NAME=`basename $f`
    ln -sf $f ~/"."$F_NAME
done

#vim config
ln -sf $CF_DIR/vim ~/.vim
if [ -L $CF_DIR/vim/vim ]
then 
    rm $CF_DIR/vim/vim
fi
ln -sf $CF_DIR/vim/vimrc ~/.vimrc


#bin
ln -sf $CF_DIR/bin ~/bin

if [ ! -d ~/tmp ]
then
    mkdir ~/tmp
fi

#vim bk and undo dir
if [ ! -d ~/bak/vimbk ]
then
    mkdir -p ~/bak/vimbk
fi

if [ ! -d ~/bak/vimundo ]
then
    mkdir -p ~/bak/vimundo
fi

#configs
if [ -d ~/.ssh ]
then
    mkdir -p ~/.ssh
fi
ln -s $CF_DIR/config/ssh-config ~/.ssh/config
