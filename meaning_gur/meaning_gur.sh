#!/bin/bash
python meaning_gur.py
#convert -background white -fill black -pointsize 22 -gravity center -font FreeSerif -size 700x caption:@heading.csv hukamnama_heading.png
convert -background white -fill black -pointsize 22 -gravity center -font ../fonts/webakharslim.ttf -stroke black -strokewidth .5 -size 1000x caption:@header.csv header.png
convert -background white -fill black -pointsize 22 -font ../fonts/webakharslim.ttf -stroke black -strokewidth .2 -size 1000x caption:@paragraph.csv paragraph.png
convert header.png paragraph.png -append meaning_gur_temp.png
convert meaning_gur_temp.png -bordercolor white -border 15 meaning_gur_temp1.png
convert meaning_gur_temp1.png -bordercolor DarkGoldenrod1 -border 10 meaning_gur_temp2.png
convert meaning_gur_temp2.png -bordercolor white -border 5 meaning_gur.png

