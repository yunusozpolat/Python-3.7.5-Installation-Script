#!/bin/bash

# Update process
echo "Updating system..."
sudo apt update && sudo apt upgrade -y

# Installing Python 3.7.5
echo "Installing Python 3.7.5..."
sudo apt install -y software-properties-common \
    build-essential \
    libffi-dev \
    libssl-dev \
    zlib1g-dev \
    liblzma-dev \
    libbz2-dev \
    libsqlite3-dev \
    libreadline-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libgdbm-dev \
    libnss3-dev

cd /usr/src

sudo wget https://www.python.org/ftp/python/3.7.5/Python-3.7.5.tgz

sudo tar xzf Python-3.7.5.tgz

cd Python-3.7.5

sudo ./configure --enable-optimizations

sudo make -j$(nproc)

sudo make altinstall

echo "... Python 3.7.5 installation completed ..."

# Installing pip
echo "Installing pip..."

sudo apt install -y python3-pip

python3.7 -m ensurepip

python3.7 -m pip install --upgrade pip

echo "... Pip installation completed ..."
