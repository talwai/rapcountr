from django.http import HttpResponse
from django.shortcuts import render

import jsonpickle

def get_frequencies(request, artist):
    args = {'name' : artist}
    return render(request, 'frequencies.html', args)


def index_view(request):
    return HttpResponse("Welcome to Rapcountr!")
