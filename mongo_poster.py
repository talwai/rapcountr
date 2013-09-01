import os
import pymongo

from urlparse import urlparse
from webapp.models import Artist
from src.construct import *
MONGO_URL = os.environ.get('MONGOHQ_URL')

if MONGO_URL:
    # Get a connection
    conn = pymongo.Connection(MONGO_URL)

    # Get the database
    db = conn[urlparse(MONGO_URL).path[1:]]
else:
    # Not on an app with the MongoHQ add-on, do some localhost action
    conn = pymongo.Connection('localhost', 27017)
    db = conn['someapps-db']

collection = db['Tries_db']

for artist in Artist.objects.all():
    print artist.name
    full_path = 'out_files/' + artist.filepath
    post = {
            'name' : artist.name,
            'trie' : construct_json(full_path)
            }
    collection.insert(post)

