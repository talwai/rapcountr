from webapp.models import Artist

artist_dict = {}
with open('urls.txt', 'r') as file:
    LINES_IN = file.readlines()

for line in LINES_IN:
    artist = line.split(',')[0]
    if artist not in artist_dict:
        trimmed_artist = artist.replace('/','')
        filepath = "".join(trimmed_artist.split()) + ".txt"
        artist_dict[artist] = filepath
        Artist.objects.create(name = artist, filepath = filepath)
