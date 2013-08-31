from django.http import HttpResponse
import jsonpickle

def get_discography(request, artist):
    my_dict = {
            'key' : artist
            }
    data  = jsonpickle.encode(my_dict)
    return HttpResponse(data, mimetype='application/json')

def index_view(request):
    return HttpResponse("Welcome to Rapcountr!")
