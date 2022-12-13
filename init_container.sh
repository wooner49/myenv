#!/bin/bash

apt-get update
apt-get install -y libxrender1 g++

pip install --upgrade pip
pip install pyg-lib torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.12.1+cu113.html
pip install scipy pandas

