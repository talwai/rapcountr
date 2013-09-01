from django.http import HttpResponse
from django.template import Template, Context
from django.template.loader import get_template

import jsonpickle

def get_frequencies(request, artist):
    t = get_template('frequencies.html')
    c = Context({'name' : artist})
    html = t.render(c)
    return HttpResponse(html)



def index_view(request):
    return HttpResponse("Welcome to Rapcountr!")
