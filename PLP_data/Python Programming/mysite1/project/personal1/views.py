from django.shortcuts import render

# Create your views here.
def home_screen(request):
    print(request.headers)
    return render (request, 'base.html', {})