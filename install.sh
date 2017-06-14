#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
apt-get install -y python3-pip && apt-get update
apt-get install -y python3-bs4
apt-get install -y imagemagick-common
cd /usr/share/fonts/truetype/ && wget https://www.sikhnet.com/files/fonts/webakharslim.ttf && chmod 755 webakharslim.ttf
sed -i 's/<policy domain="path" rights="none" pattern=\"@\*\" \/>/<!-- <policy domain="path" rights="none" pattern=\"@\*\" \/> -->/g' /etc/ImageMagick-6/policy.xml
chmod 755 -R ./*
