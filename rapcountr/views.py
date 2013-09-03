import os
from django.http import HttpResponse
from django.shortcuts import render
from webapp.models import Artist
from Globals import name_dict, file_dict

from query_server import *
import jsonpickle

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

def get_frequencies(request, artist, query):
    filepath = ''
    try:
       #obj = Artist.objects.get(name=artist)
        name = name_dict[artist.lower()]
        curr_artist = collection.find_one( {"name" : name} )
        trie = curr_artist.trie
    except KeyError: #Artist.DoesNotExist
        return HttpResponse("No Such Artist %s" % artist)
    else:
        args = {'name' : filepath,
                'result_list' : global_lookup(query, trie) }
    return render(request, 'frequencies.html', args)


def index_view(request):
    return HttpResponse("Welcome to Rapcountr!")
