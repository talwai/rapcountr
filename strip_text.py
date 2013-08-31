import nltk
import sys
from urllib import urlopen


def get_text_from_url(url):
    html = urlopen(url).read()
    raw_lines = nltk.clean_html(html).split('\n')

    for line in list(raw_lines):
        if line.strip() == '' or line.isspace() or line.strip() == '[Chorus]':
            raw_lines.remove(line)
    return ' '.join(raw_lines)


LINES_IN = sys.stdin.read()
print LINES_IN

for line in LINES_IN:
    artist, url = line.split(',')
    print artist, url
    filename = "lyrics/" + "".join(artist.split()) + ".txt"
    with open(filename, 'a') as file:
        file.write(get_text_from_url(url.strip()))




