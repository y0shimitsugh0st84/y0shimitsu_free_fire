#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Xfce4 UI components"
apt-get update 
apt-get install -y supervisor xfce4 xfce4-terminal xterm
apt-get purge -y pm-utils xscreensaver*
apt install --fix-missing -y vim wget ca-certificates xorgxrdp pulseaudio xrdp\
  xauth supervisor uuid-runtime locales \
  openssh-server sudo git build-essential cmake libuv1-dev uuid-dev libmicrohttpd-dev libssl-dev \
  nano python-pip  xvfb \
  python3-pip  locate  libxml2-dev libxslt1-dev libssl-dev libmicrohttpd-dev  \
  libmysqlclient-dev byobu locate cron python-pyaudio python3-pyaudio ffmpeg \
  fonts-liberation libappindicator3-1 libfile-basedir-perl libfile-desktopentry-perl libfile-mimeinfo-perl \
  libindicator3-7  libipc-system-simple-perl libnet-dbus-perl libtie-ixhash-perl libx11-protocol-perl \
  libxml-parser-perl libxml-twig-perl libxml-xpathengine-perl xdg-utils  xserver-xephyr jq tor xarchiver libavcodec-extra vlc
apt-get clean -y
pip3 install pymysql pyvirtualdisplay faker-e164 Faker PySocks stem  bs4 selenium  ConfigParser lxml  speechrecognition requests pyvirtualdisplay pydub

