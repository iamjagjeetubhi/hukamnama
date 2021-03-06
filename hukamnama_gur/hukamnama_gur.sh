#!/bin/bash
python hukamnama_gur.py
#convert -background white -fill black -pointsize 22 -gravity center -font FreeSerif -size 700x caption:@heading.csv hukamnama_heading.png
convert -background white -fill black -pointsize 22 -gravity center -font ../fonts/webakharslim.ttf -stroke black -strokewidth .5 -size 800x caption:@header.csv header.png
convert -background white -fill black -pointsize 22 -font ../fonts/webakharslim.ttf -stroke black -strokewidth .2 -size 800x caption:@paragraph.csv paragraph.png
convert -background white -fill black -pointsize 22 -gravity center -font ../fonts/webakharslim.ttf -stroke black -strokewidth .5 -size 800x caption:@footer.csv footer.png
convert header.png paragraph.png footer.png -append hukamnama_temp.png
convert hukamnama_temp.png -bordercolor white -border 15 hukamnama_temp1.png
convert hukamnama_temp1.png -bordercolor DarkGoldenrod1 -border 10 hukamnama_temp2.png
convert hukamnama_temp2.png -bordercolor white -border 5 hukamnama_gur.png

