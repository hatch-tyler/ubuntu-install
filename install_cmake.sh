#!/bin/bash
sudo apt update

sudo apt install build-essential libtool autoconf unzip wget
sudo apt-get install libssl-dev

version=3.26
build=4

mkdir ~/cmake
cd ~/cmake

wget https://github.com/Kitware/CMake/releases/download/v$version.$build/cmake-$version.$build.tar.gz
tar -xzvf cmake-$version.$build.tar.gz
cd cmake-$version.$build/

./bootstrap
make -j$(nproc)
sudo make install