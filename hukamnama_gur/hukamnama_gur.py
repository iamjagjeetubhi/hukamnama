from bs4 import BeautifulSoup
import urllib
import csv, pdb
r = urllib.urlopen('http://old.sgpc.net/hukumnama/sgpconlinehukamnama.asp').read()
# To read HTML data from URL
soup = BeautifulSoup(r)
# To fetch <table> tags
tables = soup.find_all('table')
# To store <table> tag individually in the list
tables_list = []
# Loop to get <table> tag individually
for soup.table in tables:
	tables_list.append(soup.table)
# To store header and paragraph in header_paragraph
header_paragraph = tables_list[1]
# To get <div> tags of header from header_paragraph
div_tags = header_paragraph.find_all('div')
# To get string from <div> tags individually and store them into list
text_div = []
for div in div_tags:
	text_div.append(div.get_text(strip=True))
# To encode the string of <div> tag
encoded_div_header = []
for item in text_div:
	encoded_div_header.append(item.encode("utf-8", "ignore"))
# To write the text of <div> tags into .csv file
f = open('header.csv', 'w')
ww = csv.writer(f, delimiter='\n')
ww.writerow(encoded_div_header)
f.close()
# To get <p> tag from header_paragraph
p_tag = header_paragraph.find_all('p')
# To get string from <p> tag and store it to list
text_p = []
for text in p_tag:
	text_p.append(text.get_text(strip=True))
# To encode the string of <p> tag
encoded_p = []
for item in text_p:
	encoded_p.append(item.encode("utf-8", "ignore"))
# To write the text of <p> tag into .csv file
f = open('paragraph.csv', 'w')
ww = csv.writer(f, delimiter='\n')
ww.writerow(encoded_p)
f.close()
# To store footer in footer variable
footer = tables_list[2]
# To get <font> tags from footer
font_tags_footer = footer.find_all('font')
# To get string from <font> tags individually and store them into list
text_div_footer = []
for font in font_tags_footer:
	text_div_footer.append(font.get_text(strip=True))
# To encode the string of <div> tag
encoded_div_footer = []
for item in text_div_footer:
	encoded_div_footer.append(item.encode("utf-8", "ignore"))
# To write the text of <div> tags into .csv file
f = open('footer.csv', 'w')
ww = csv.writer(f, delimiter='\n')
ww.writerow(encoded_div_footer)
f.close()
#pdb.set_trace()
