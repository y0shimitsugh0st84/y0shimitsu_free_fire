#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Chromium Browser"
apt-get update 
apt-get install -y chromium-browser chromium-browser-l10n chromium-codecs-ffmpeg gedit
apt-get clean -y
ln -s /usr/bin/chromium-browser /usr/bin/google-chrome
### fix to start chromium in a Docker container, see https://github.com/ConSol/docker-headless-vnc-container/issues/23
echo "CHROMIUM_FLAGS='--no-sandbox --start-maximized --user-data-dir'" > $HOME/.chromium-browser.init
echo "https://booyah.live/channels/17686673" >> $HOME/booyah
echo "@protonmail.com" >> $HOME/booyah

