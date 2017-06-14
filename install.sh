#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
apt-get install python3-pip && apt-get update
apt-get install python3-bs4
apt-get install imagemagick-common
cd /usr/share/fonts/truetype/ && wget https://www.sikhnet.com/files/fonts/webakharslim.ttf && chmod 755 webakharslim.ttf
apt-get install vim
ex -sc '%s/<policy domain="path" rights="none" pattern="@*" />/<!-- <policy domain="path" rights="none" pattern="@*" /> -->/g|x' /etc/ImageMagick-6/policy.xml
chmod 755 -R ./*
