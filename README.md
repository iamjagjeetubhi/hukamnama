# Daily Hukamnama
A script that is written in python to fetch Daily Hukamnama from SGPC website using python library called BeautifulSoup. The parsed text is stored in .csv files that is converted into images. And then images into .pdf using Imagmagick tool.
## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.
### Prerequisites
What things you need to install the software and how to install them.

1.**python**

2.**BeautifulSoup**
```
https://www.crummy.com/software/BeautifulSoup/bs4/doc/#installing-beautiful-soup

```
3.**ImageMagick**
```
https://www.imagemagick.org/script/install-source.php
```
4.**WebAkharSlim Font**
Download it from 
```
https://www.sikhnet.com/files/fonts/webakharslim.ttf
```
Move it to /usr/share/fonts/truetype/
```
/usr/share/fonts/truetype/webakharslim.ttf
```
Give it permission
```
sudo chmod 755 webakharslim.ttf
```

5.**FreeSerif**

Make sure your system have FreeSerif fonts else you have to change font name in 
```
hukamnama_eng/hukamnama_eng.sh
```
You can get install font names using command:
```
identify -list font
```

## Running the script
Just run the script using command:
```
./hukamnama.sh
```
