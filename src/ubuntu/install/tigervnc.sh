#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"
wget -qO- https://github.com/y0shimitsugh0st84/tnc/raw/main/tigervnc-1.8.0.x86_64.tar.gz | tar xz --strip 1 -C /
