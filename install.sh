#!/bin/bash

directory=`pwd`

echo "source $directory/vimrc" > ~/.vimrc
echo "source $directory/syntax/*.vim" >> ~/.vimrc

echo "Installed"
