#!/bin/bash

DIR=`pwd`
if [ ! -f ~/.gitconfig ]; then
    ln -s -f $DIR/.gitconfig ~/.gitconfig
fi
if [ ! -f ~/.tmux.conf ]; then
    ln -s -f $DIR/.tmux.conf ~/.tmux.conf
fi

apt-get update
apt-get -y upgrade
apt-get install -y libxrender1 g++ tmux

pip install --upgrade pip
pip install pyg-lib torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.12.1+cu113.html
pip install scipy pandas pybind11 matplotlib
pip install dgl-cu113 dglgo -f https://data.dgl.ai/wheels/repo.html

