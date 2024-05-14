from django.shortcuts import render

# Create your views here.
def home_screen(request):
    print(request.headers)
    return render (request, 'index.html', {})


def about_screen(request):
    print(request.headers)
    return render (request, 'about.html', {})


def appointment_screen(request):
    print(request.headers)
    return render (request, 'appointment.html', {})


def call_to_action_screen(request):
    print(request.headers)
    return render (request, 'call-to-action.html', {})


def classes_screen(request):
    print(request.headers)
    return render (request, 'classes.html', {})


def contact_screen(request):
    print(request.headers)
    return render (request, 'contact.html', {})


def facility_screen(request):
    print(request.headers)
    return render (request, 'facility.html', {})


def team_screen(request):
    print(request.headers)
    return render (request, 'team.html', {})


def testimonial_screen(request):
    print(request.headers)
    return render (request, 'testimonial.html', {})


def error_screen(request):
    print(request.headers)
    return render (request, '404.html', {})

