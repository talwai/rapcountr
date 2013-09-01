from django.http import HttpResponse
from django.shortcuts import render
from webapp.models import Artist

import jsonpickle

def get_frequencies(request, artist):
    try:
       obj = Artist.objects.get(name=artist)
    except Artist.DoesNotExist:
        return HttpResponse("No Such Artist")
    else:
        args = {'name' : obj.filepath}
    return render(request, 'frequencies.html', args)


def index_view(request):
    return HttpResponse("Welcome to Rapcountr!")
