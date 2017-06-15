#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi
cd hukamnama_gur && bash hukamnama_gur.sh && cp hukamnama_gur.png ../ && cd ..
cd meaning_gur && bash meaning_gur.sh && cp meaning_gur.png ../ && cd ..
cd hukamnama_eng && bash hukamnama_eng.sh && cp hukamnama_eng.png ../ && cd ..
convert -units PixelsPerInch hukamnama_gur.png meaning_gur.png hukamnama_eng.png -density 96 +repage hukamnama.pdf
