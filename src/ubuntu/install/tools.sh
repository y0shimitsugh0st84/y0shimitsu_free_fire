#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update 
apt-get install -y vim wget net-tools locales bzip2 \
    python-numpy #used for websockify/novnc
apt-get -y install git gcc curl make repo libxml2-utils flex m4 openjdk-8-jdk lib32stdc++6 libelf-dev libssl-dev python-enum34 python-mako syslinux-utils software-properties-common
apt-get clean -y

echo "generate locales für en_US.UTF-8"
locale-gen en_US.UTF-8

