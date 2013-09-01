import nltk
import sys
from urllib import urlopen

def get_text_from_url(url):
    try:
        html = urlopen(url).read()
        raw_lines = nltk.clean_html(html).split('\n')

        for line in list(raw_lines):
            if line.strip() == '' or line.isspace() or line.strip() == '[Chorus]':
                raw_lines.remove(line)
        return ' '.join(raw_lines) + ' '
    except IOError:
        return ' '

with open('urls.txt','r') as file:
    LINES_IN = file.readlines()

current_artist = ''

for line in LINES_IN:
    line = line.strip()
    artist, url = line.split(',')

    #if artist != current_artist:
    #	current_artist = artist
    #   print "Current Artist " + current_artist

    artist  = artist.replace('/','')
    filename = "lyrics/" + "".join(artist.split()) + ".txt"

    with open(filename, 'a') as file:
        file.write(get_text_from_url(url.strip()))




