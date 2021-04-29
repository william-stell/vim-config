#!/bin/bash

DIRECTORY=$(cd `dirname $0` && pwd)

echo "${DIRECTORY}"

ln -s ${DIRECTORY} ~/.vim
ln -s ${DIRECTORY}/vimrc ~/.vimrc

echo "Installed"
