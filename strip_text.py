import nltk
import sys
from urllib import urlopen

url = sys.stdin.read()
print url

html = urlopen(url).read()
raw_lines = nltk.clean_html(html).split('\n')

for line in list(raw_lines):
    if line.strip() == '' or line.isspace() or line.strip() == '[Chorus]':
        raw_lines.remove(line)
print raw_lines
