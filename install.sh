#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
apt-get install -y python-pip && apt-get update
apt-get install -y python-bs4
apt-get install -y imagemagick
cd /usr/share/fonts/truetype/ && wget http://www.aeoneducreation.com/~aeon/fonts/webakharslim.ttf && chmod 755 webakharslim.ttf 
wget http://www.aeoneducreation.com/~aeon/fonts/FreeSerif.ttf && chmod 755 FreeSerif.ttf
sed -i 's/<policy domain="path" rights="none" pattern=\"@\*\" \/>/<!-- <policy domain="path" rights="none" pattern=\"@\*\" \/> -->/g' /etc/ImageMagick-6/policy.xml
chmod 755 -R ./*
