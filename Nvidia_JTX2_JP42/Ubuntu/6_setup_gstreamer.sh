#!/bin/bash

# this script installs all gstreamer components

if [ $(id -u) -ne 0 ]; then
   echo >&2 "Must be run as root"
   exit 1
fi

. config.env

set -e
set -x

sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt-get update
sudo apt-get install gstreamer1.0-tools gstreamer1.0-alsa \
 gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
 gstreamer1.0-libav
sudo apt-get install libgstreamer1.0-dev \
 libgstreamer-plugins-base1.0-dev \
 libgstreamer-plugins-good1.0-dev \
 libgstreamer-plugins-bad1.0-dev
sudo apt install libgstrtspserver-1.0-dev
